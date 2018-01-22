import os
import tensorflow as tf
import pandas as pd
from sklearn.preprocessing import MinMaxScaler

# Turn off TensorFlow warning messages in program output
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'

# Load training data set from CSV file
# Pull out columns for X (data to train with) and Y (value to predict)

# Load testing data set from CSV file
test_data_df = pd.read_csv("BandPower_Val_Test_1-32-256.csv", dtype=float)

# Pull out columns for X (data to train with) and Y (value to predict)
X_testing = test_data_df.drop('Valence', axis=1).values
Y_testing = test_data_df[['Valence']].values

# All data needs to be scaled to a small range like 0 to 1 for the neural
# network to work well. Create scalers for the inputs and outputs.

# It's very important that the training and test data are scaled with the same scaler.
X_scaled_testing = X_testing
Y_scaled_testing = Y_testing

# Define model parameters
learning_rate = 0.005
training_epochs = 5000

# Define how many inputs and outputs are in our neural network
number_of_inputs = 7
number_of_outputs = 1

# Define how many neurons we want in each layer of our neural network
layer_1_nodes = 256
layer_2_nodes = 768
layer_3_nodes = 768
layer_4_nodes = 256

# Section One: Define the layers of the neural network itself

# Input Layer
with tf.variable_scope('input'):
    X = tf.placeholder(tf.float32, shape=(None, number_of_inputs))

# Layer 1
with tf.variable_scope('layer_1'):
    weights = tf.get_variable("weights1", shape=[number_of_inputs, layer_1_nodes], initializer=tf.contrib.layers.xavier_initializer())
    biases = tf.get_variable(name="biases1", shape=[layer_1_nodes], initializer=tf.zeros_initializer())
    layer_1_output = tf.nn.relu(tf.matmul(X, weights) + biases)

# Layer 2
with tf.variable_scope('layer_2'):
    weights = tf.get_variable("weights2", shape=[layer_1_nodes, layer_2_nodes], initializer=tf.contrib.layers.xavier_initializer())
    biases = tf.get_variable(name="biases2", shape=[layer_2_nodes], initializer=tf.zeros_initializer())
    layer_2_output = tf.nn.relu(tf.matmul(layer_1_output, weights) + biases)

# Layer 3
with tf.variable_scope('layer_3'):
    weights = tf.get_variable("weights3", shape=[layer_2_nodes, layer_3_nodes], initializer=tf.contrib.layers.xavier_initializer())
    biases = tf.get_variable(name="biases3", shape=[layer_3_nodes], initializer=tf.zeros_initializer())
    layer_3_output = tf.nn.relu(tf.matmul(layer_2_output, weights) + biases)

# Layer 4
with tf.variable_scope('layer_4'):
    weights = tf.get_variable("weights4", shape=[layer_3_nodes, layer_4_nodes], initializer=tf.contrib.layers.xavier_initializer())
    biases = tf.get_variable(name="biases4", shape=[layer_4_nodes], initializer=tf.zeros_initializer())
    layer_4_output = tf.nn.relu(tf.matmul(layer_3_output, weights) + biases)

# Output Layer
with tf.variable_scope('output'):
    weights = tf.get_variable("weights5", shape=[layer_4_nodes, number_of_outputs], initializer=tf.contrib.layers.xavier_initializer())
    biases = tf.get_variable(name="biases5", shape=[number_of_outputs], initializer=tf.zeros_initializer())
    prediction = tf.matmul(layer_4_output, weights) + biases

# Section Two: Define the cost function of the neural network that will measure prediction accuracy during training

with tf.variable_scope('cost'):
    Y = tf.placeholder(tf.float32, shape=(None, 1))
    cost = tf.reduce_mean(tf.squared_difference(prediction, Y))

# Section Three: Define the optimizer function that will be run to optimize the neural network

with tf.variable_scope('train'):
    optimizer = tf.train.AdamOptimizer(learning_rate).minimize(cost)

# Create a summary operation to log the progress of the network
with tf.variable_scope('logging'):
    tf.summary.scalar('current_cost', cost)
    summary = tf.summary.merge_all()

saver = tf.train.Saver()

# Initialize a session so that we can run TensorFlow operations
with tf.Session() as session:

    # When loading from a checkpoint, don't initialize the variables!
    # session.run(tf.global_variables_initializer())

    # Instead, load them from disk:
    saver.restore(session, 'D:\summary'+'.\\'+'trained_model.ckpt')

    print("Trained model loaded from disk.")

    # Now that the neural network is trained, let's use it to make predictions for our test data.
    # Pass in the X testing data and run the "prediciton" operation
    Y_predicted_scaled = session.run(prediction, feed_dict={X: X_scaled_testing})

    # Unscale the data back to it's original units (dollars)
    Y_predicted = Y_predicted_scaled

    accuracy = 0

    for i in range (61403):

        real_earnings = test_data_df['Valence'].values[i]
        predicted_earnings = Y_predicted[i][0]

        if (real_earnings-4.5)*(predicted_earnings-4.5)>0:
            accuracy = accuracy + 1/61403
        else:
            accuracy = accuracy

        print(accuracy)