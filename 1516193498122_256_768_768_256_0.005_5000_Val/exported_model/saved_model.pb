Ŕ
Ő¸
9
Add
x"T
y"T
z"T"
Ttype:
2	
ë
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T"
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
F
SquaredDifference
x"T
y"T
z"T"
Ttype:
	2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
9
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.4.02
b'unknown'Ćž
t
input/PlaceholderPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
1layer_1/weights1/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      *#
_class
loc:@layer_1/weights1*
_output_shapes
:

/layer_1/weights1/Initializer/random_uniform/minConst*
dtype0*
valueB
 *ÂŞž*#
_class
loc:@layer_1/weights1*
_output_shapes
: 

/layer_1/weights1/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *ÂŞ>*#
_class
loc:@layer_1/weights1*
_output_shapes
: 
ň
9layer_1/weights1/Initializer/random_uniform/RandomUniformRandomUniform1layer_1/weights1/Initializer/random_uniform/shape*
T0*
dtype0*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
seed2 *

seed 
Ţ
/layer_1/weights1/Initializer/random_uniform/subSub/layer_1/weights1/Initializer/random_uniform/max/layer_1/weights1/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes
: 
ń
/layer_1/weights1/Initializer/random_uniform/mulMul9layer_1/weights1/Initializer/random_uniform/RandomUniform/layer_1/weights1/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes
:	
ă
+layer_1/weights1/Initializer/random_uniformAdd/layer_1/weights1/Initializer/random_uniform/mul/layer_1/weights1/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes
:	
Ť
layer_1/weights1
VariableV2*
shape:	*
shared_name *#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
dtype0*
	container 
Ř
layer_1/weights1/AssignAssignlayer_1/weights1+layer_1/weights1/Initializer/random_uniform*
T0*
use_locking(*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
validate_shape(

layer_1/weights1/readIdentitylayer_1/weights1*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes
:	

!layer_1/biases1/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_1/biases1*
_output_shapes	
:
Ą
layer_1/biases1
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
dtype0*
	container 
Ç
layer_1/biases1/AssignAssignlayer_1/biases1!layer_1/biases1/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
validate_shape(
{
layer_1/biases1/readIdentitylayer_1/biases1*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes	
:

layer_1/MatMulMatMulinput/Placeholderlayer_1/weights1/read*
T0*
transpose_a( *
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
layer_1/addAddlayer_1/MatMullayer_1/biases1/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
layer_1/ReluRelulayer_1/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
1layer_2/weights2/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      *#
_class
loc:@layer_2/weights2*
_output_shapes
:

/layer_2/weights2/Initializer/random_uniform/minConst*
dtype0*
valueB
 *qÄ˝*#
_class
loc:@layer_2/weights2*
_output_shapes
: 

/layer_2/weights2/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *qÄ=*#
_class
loc:@layer_2/weights2*
_output_shapes
: 
ó
9layer_2/weights2/Initializer/random_uniform/RandomUniformRandomUniform1layer_2/weights2/Initializer/random_uniform/shape*
T0*
dtype0*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
seed2 *

seed 
Ţ
/layer_2/weights2/Initializer/random_uniform/subSub/layer_2/weights2/Initializer/random_uniform/max/layer_2/weights2/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_2/weights2*
_output_shapes
: 
ň
/layer_2/weights2/Initializer/random_uniform/mulMul9layer_2/weights2/Initializer/random_uniform/RandomUniform/layer_2/weights2/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_2/weights2* 
_output_shapes
:

ä
+layer_2/weights2/Initializer/random_uniformAdd/layer_2/weights2/Initializer/random_uniform/mul/layer_2/weights2/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_2/weights2* 
_output_shapes
:

­
layer_2/weights2
VariableV2*
shape:
*
shared_name *#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
dtype0*
	container 
Ů
layer_2/weights2/AssignAssignlayer_2/weights2+layer_2/weights2/Initializer/random_uniform*
T0*
use_locking(*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
validate_shape(

layer_2/weights2/readIdentitylayer_2/weights2*
T0*#
_class
loc:@layer_2/weights2* 
_output_shapes
:


!layer_2/biases2/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_2/biases2*
_output_shapes	
:
Ą
layer_2/biases2
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
dtype0*
	container 
Ç
layer_2/biases2/AssignAssignlayer_2/biases2!layer_2/biases2/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
validate_shape(
{
layer_2/biases2/readIdentitylayer_2/biases2*
T0*"
_class
loc:@layer_2/biases2*
_output_shapes	
:

layer_2/MatMulMatMullayer_1/Relulayer_2/weights2/read*
T0*
transpose_a( *
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
layer_2/addAddlayer_2/MatMullayer_2/biases2/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
layer_2/ReluRelulayer_2/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
1layer_3/weights3/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      *#
_class
loc:@layer_3/weights3*
_output_shapes
:

/layer_3/weights3/Initializer/random_uniform/minConst*
dtype0*
valueB
 *  ˝*#
_class
loc:@layer_3/weights3*
_output_shapes
: 

/layer_3/weights3/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *  =*#
_class
loc:@layer_3/weights3*
_output_shapes
: 
ó
9layer_3/weights3/Initializer/random_uniform/RandomUniformRandomUniform1layer_3/weights3/Initializer/random_uniform/shape*
T0*
dtype0*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
seed2 *

seed 
Ţ
/layer_3/weights3/Initializer/random_uniform/subSub/layer_3/weights3/Initializer/random_uniform/max/layer_3/weights3/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_3/weights3*
_output_shapes
: 
ň
/layer_3/weights3/Initializer/random_uniform/mulMul9layer_3/weights3/Initializer/random_uniform/RandomUniform/layer_3/weights3/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_3/weights3* 
_output_shapes
:

ä
+layer_3/weights3/Initializer/random_uniformAdd/layer_3/weights3/Initializer/random_uniform/mul/layer_3/weights3/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_3/weights3* 
_output_shapes
:

­
layer_3/weights3
VariableV2*
shape:
*
shared_name *#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
dtype0*
	container 
Ů
layer_3/weights3/AssignAssignlayer_3/weights3+layer_3/weights3/Initializer/random_uniform*
T0*
use_locking(*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
validate_shape(

layer_3/weights3/readIdentitylayer_3/weights3*
T0*#
_class
loc:@layer_3/weights3* 
_output_shapes
:


!layer_3/biases3/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_3/biases3*
_output_shapes	
:
Ą
layer_3/biases3
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
dtype0*
	container 
Ç
layer_3/biases3/AssignAssignlayer_3/biases3!layer_3/biases3/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
validate_shape(
{
layer_3/biases3/readIdentitylayer_3/biases3*
T0*"
_class
loc:@layer_3/biases3*
_output_shapes	
:

layer_3/MatMulMatMullayer_2/Relulayer_3/weights3/read*
T0*
transpose_a( *
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
layer_3/addAddlayer_3/MatMullayer_3/biases3/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
layer_3/ReluRelulayer_3/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
§
1layer_4/weights4/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      *#
_class
loc:@layer_4/weights4*
_output_shapes
:

/layer_4/weights4/Initializer/random_uniform/minConst*
dtype0*
valueB
 *qÄ˝*#
_class
loc:@layer_4/weights4*
_output_shapes
: 

/layer_4/weights4/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *qÄ=*#
_class
loc:@layer_4/weights4*
_output_shapes
: 
ó
9layer_4/weights4/Initializer/random_uniform/RandomUniformRandomUniform1layer_4/weights4/Initializer/random_uniform/shape*
T0*
dtype0*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
seed2 *

seed 
Ţ
/layer_4/weights4/Initializer/random_uniform/subSub/layer_4/weights4/Initializer/random_uniform/max/layer_4/weights4/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_4/weights4*
_output_shapes
: 
ň
/layer_4/weights4/Initializer/random_uniform/mulMul9layer_4/weights4/Initializer/random_uniform/RandomUniform/layer_4/weights4/Initializer/random_uniform/sub*
T0*#
_class
loc:@layer_4/weights4* 
_output_shapes
:

ä
+layer_4/weights4/Initializer/random_uniformAdd/layer_4/weights4/Initializer/random_uniform/mul/layer_4/weights4/Initializer/random_uniform/min*
T0*#
_class
loc:@layer_4/weights4* 
_output_shapes
:

­
layer_4/weights4
VariableV2*
shape:
*
shared_name *#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
dtype0*
	container 
Ů
layer_4/weights4/AssignAssignlayer_4/weights4+layer_4/weights4/Initializer/random_uniform*
T0*
use_locking(*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
validate_shape(

layer_4/weights4/readIdentitylayer_4/weights4*
T0*#
_class
loc:@layer_4/weights4* 
_output_shapes
:


!layer_4/biases4/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_4/biases4*
_output_shapes	
:
Ą
layer_4/biases4
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
dtype0*
	container 
Ç
layer_4/biases4/AssignAssignlayer_4/biases4!layer_4/biases4/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
validate_shape(
{
layer_4/biases4/readIdentitylayer_4/biases4*
T0*"
_class
loc:@layer_4/biases4*
_output_shapes	
:

layer_4/MatMulMatMullayer_3/Relulayer_4/weights4/read*
T0*
transpose_a( *
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
layer_4/addAddlayer_4/MatMullayer_4/biases4/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
layer_4/ReluRelulayer_4/add*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0output/weights5/Initializer/random_uniform/shapeConst*
dtype0*
valueB"      *"
_class
loc:@output/weights5*
_output_shapes
:

.output/weights5/Initializer/random_uniform/minConst*
dtype0*
valueB
 *Ivž*"
_class
loc:@output/weights5*
_output_shapes
: 

.output/weights5/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *Iv>*"
_class
loc:@output/weights5*
_output_shapes
: 
ď
8output/weights5/Initializer/random_uniform/RandomUniformRandomUniform0output/weights5/Initializer/random_uniform/shape*
T0*
dtype0*"
_class
loc:@output/weights5*
_output_shapes
:	*
seed2 *

seed 
Ú
.output/weights5/Initializer/random_uniform/subSub.output/weights5/Initializer/random_uniform/max.output/weights5/Initializer/random_uniform/min*
T0*"
_class
loc:@output/weights5*
_output_shapes
: 
í
.output/weights5/Initializer/random_uniform/mulMul8output/weights5/Initializer/random_uniform/RandomUniform.output/weights5/Initializer/random_uniform/sub*
T0*"
_class
loc:@output/weights5*
_output_shapes
:	
ß
*output/weights5/Initializer/random_uniformAdd.output/weights5/Initializer/random_uniform/mul.output/weights5/Initializer/random_uniform/min*
T0*"
_class
loc:@output/weights5*
_output_shapes
:	
Š
output/weights5
VariableV2*
shape:	*
shared_name *"
_class
loc:@output/weights5*
_output_shapes
:	*
dtype0*
	container 
Ô
output/weights5/AssignAssignoutput/weights5*output/weights5/Initializer/random_uniform*
T0*
use_locking(*"
_class
loc:@output/weights5*
_output_shapes
:	*
validate_shape(

output/weights5/readIdentityoutput/weights5*
T0*"
_class
loc:@output/weights5*
_output_shapes
:	

 output/biases5/Initializer/zerosConst*
dtype0*
valueB*    *!
_class
loc:@output/biases5*
_output_shapes
:

output/biases5
VariableV2*
shape:*
shared_name *!
_class
loc:@output/biases5*
_output_shapes
:*
dtype0*
	container 
Â
output/biases5/AssignAssignoutput/biases5 output/biases5/Initializer/zeros*
T0*
use_locking(*!
_class
loc:@output/biases5*
_output_shapes
:*
validate_shape(
w
output/biases5/readIdentityoutput/biases5*
T0*!
_class
loc:@output/biases5*
_output_shapes
:

output/MatMulMatMullayer_4/Reluoutput/weights5/read*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g

output/addAddoutput/MatMuloutput/biases5/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
cost/PlaceholderPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
cost/SquaredDifferenceSquaredDifference
output/addcost/Placeholder*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[

cost/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
s
	cost/MeanMeancost/SquaredDifference
cost/Const*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
X
train/gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
Z
train/gradients/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
k
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/Const*
T0*
_output_shapes
: 
}
,train/gradients/cost/Mean_grad/Reshape/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
Ź
&train/gradients/cost/Mean_grad/ReshapeReshapetrain/gradients/Fill,train/gradients/cost/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
z
$train/gradients/cost/Mean_grad/ShapeShapecost/SquaredDifference*
T0*
out_type0*
_output_shapes
:
˝
#train/gradients/cost/Mean_grad/TileTile&train/gradients/cost/Mean_grad/Reshape$train/gradients/cost/Mean_grad/Shape*
T0*

Tmultiples0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
&train/gradients/cost/Mean_grad/Shape_1Shapecost/SquaredDifference*
T0*
out_type0*
_output_shapes
:
i
&train/gradients/cost/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
Š
$train/gradients/cost/Mean_grad/ConstConst*
dtype0*
valueB: *9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
_output_shapes
:
ň
#train/gradients/cost/Mean_grad/ProdProd&train/gradients/cost/Mean_grad/Shape_1$train/gradients/cost/Mean_grad/Const*
T0*

Tidx0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
	keep_dims( *
_output_shapes
: 
Ť
&train/gradients/cost/Mean_grad/Const_1Const*
dtype0*
valueB: *9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
_output_shapes
:
ö
%train/gradients/cost/Mean_grad/Prod_1Prod&train/gradients/cost/Mean_grad/Shape_2&train/gradients/cost/Mean_grad/Const_1*
T0*

Tidx0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
	keep_dims( *
_output_shapes
: 
Ľ
(train/gradients/cost/Mean_grad/Maximum/yConst*
dtype0*
value	B :*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
_output_shapes
: 
Ţ
&train/gradients/cost/Mean_grad/MaximumMaximum%train/gradients/cost/Mean_grad/Prod_1(train/gradients/cost/Mean_grad/Maximum/y*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
_output_shapes
: 
Ü
'train/gradients/cost/Mean_grad/floordivFloorDiv#train/gradients/cost/Mean_grad/Prod&train/gradients/cost/Mean_grad/Maximum*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
_output_shapes
: 

#train/gradients/cost/Mean_grad/CastCast'train/gradients/cost/Mean_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0
­
&train/gradients/cost/Mean_grad/truedivRealDiv#train/gradients/cost/Mean_grad/Tile#train/gradients/cost/Mean_grad/Cast*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
{
1train/gradients/cost/SquaredDifference_grad/ShapeShape
output/add*
T0*
out_type0*
_output_shapes
:

3train/gradients/cost/SquaredDifference_grad/Shape_1Shapecost/Placeholder*
T0*
out_type0*
_output_shapes
:
˙
Atrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs1train/gradients/cost/SquaredDifference_grad/Shape3train/gradients/cost/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
 
2train/gradients/cost/SquaredDifference_grad/scalarConst'^train/gradients/cost/Mean_grad/truediv*
dtype0*
valueB
 *   @*
_output_shapes
: 
Ä
/train/gradients/cost/SquaredDifference_grad/mulMul2train/gradients/cost/SquaredDifference_grad/scalar&train/gradients/cost/Mean_grad/truediv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
/train/gradients/cost/SquaredDifference_grad/subSub
output/addcost/Placeholder'^train/gradients/cost/Mean_grad/truediv*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ě
1train/gradients/cost/SquaredDifference_grad/mul_1Mul/train/gradients/cost/SquaredDifference_grad/mul/train/gradients/cost/SquaredDifference_grad/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
/train/gradients/cost/SquaredDifference_grad/SumSum1train/gradients/cost/SquaredDifference_grad/mul_1Atrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
â
3train/gradients/cost/SquaredDifference_grad/ReshapeReshape/train/gradients/cost/SquaredDifference_grad/Sum1train/gradients/cost/SquaredDifference_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
1train/gradients/cost/SquaredDifference_grad/Sum_1Sum1train/gradients/cost/SquaredDifference_grad/mul_1Ctrain/gradients/cost/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
č
5train/gradients/cost/SquaredDifference_grad/Reshape_1Reshape1train/gradients/cost/SquaredDifference_grad/Sum_13train/gradients/cost/SquaredDifference_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

/train/gradients/cost/SquaredDifference_grad/NegNeg5train/gradients/cost/SquaredDifference_grad/Reshape_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
<train/gradients/cost/SquaredDifference_grad/tuple/group_depsNoOp4^train/gradients/cost/SquaredDifference_grad/Reshape0^train/gradients/cost/SquaredDifference_grad/Neg
ž
Dtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependencyIdentity3train/gradients/cost/SquaredDifference_grad/Reshape=^train/gradients/cost/SquaredDifference_grad/tuple/group_deps*
T0*F
_class<
:8loc:@train/gradients/cost/SquaredDifference_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
Ftrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency_1Identity/train/gradients/cost/SquaredDifference_grad/Neg=^train/gradients/cost/SquaredDifference_grad/tuple/group_deps*
T0*B
_class8
64loc:@train/gradients/cost/SquaredDifference_grad/Neg*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
%train/gradients/output/add_grad/ShapeShapeoutput/MatMul*
T0*
out_type0*
_output_shapes
:
q
'train/gradients/output/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ű
5train/gradients/output/add_grad/BroadcastGradientArgsBroadcastGradientArgs%train/gradients/output/add_grad/Shape'train/gradients/output/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ç
#train/gradients/output/add_grad/SumSumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency5train/gradients/output/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ž
'train/gradients/output/add_grad/ReshapeReshape#train/gradients/output/add_grad/Sum%train/gradients/output/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
%train/gradients/output/add_grad/Sum_1SumDtrain/gradients/cost/SquaredDifference_grad/tuple/control_dependency7train/gradients/output/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ˇ
)train/gradients/output/add_grad/Reshape_1Reshape%train/gradients/output/add_grad/Sum_1'train/gradients/output/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

0train/gradients/output/add_grad/tuple/group_depsNoOp(^train/gradients/output/add_grad/Reshape*^train/gradients/output/add_grad/Reshape_1

8train/gradients/output/add_grad/tuple/control_dependencyIdentity'train/gradients/output/add_grad/Reshape1^train/gradients/output/add_grad/tuple/group_deps*
T0*:
_class0
.,loc:@train/gradients/output/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

:train/gradients/output/add_grad/tuple/control_dependency_1Identity)train/gradients/output/add_grad/Reshape_11^train/gradients/output/add_grad/tuple/group_deps*
T0*<
_class2
0.loc:@train/gradients/output/add_grad/Reshape_1*
_output_shapes
:
Ü
)train/gradients/output/MatMul_grad/MatMulMatMul8train/gradients/output/add_grad/tuple/control_dependencyoutput/weights5/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
+train/gradients/output/MatMul_grad/MatMul_1MatMullayer_4/Relu8train/gradients/output/add_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( *
_output_shapes
:	

3train/gradients/output/MatMul_grad/tuple/group_depsNoOp*^train/gradients/output/MatMul_grad/MatMul,^train/gradients/output/MatMul_grad/MatMul_1

;train/gradients/output/MatMul_grad/tuple/control_dependencyIdentity)train/gradients/output/MatMul_grad/MatMul4^train/gradients/output/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@train/gradients/output/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

=train/gradients/output/MatMul_grad/tuple/control_dependency_1Identity+train/gradients/output/MatMul_grad/MatMul_14^train/gradients/output/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@train/gradients/output/MatMul_grad/MatMul_1*
_output_shapes
:	
´
*train/gradients/layer_4/Relu_grad/ReluGradReluGrad;train/gradients/output/MatMul_grad/tuple/control_dependencylayer_4/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
&train/gradients/layer_4/add_grad/ShapeShapelayer_4/MatMul*
T0*
out_type0*
_output_shapes
:
s
(train/gradients/layer_4/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ţ
6train/gradients/layer_4/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_4/add_grad/Shape(train/gradients/layer_4/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ď
$train/gradients/layer_4/add_grad/SumSum*train/gradients/layer_4/Relu_grad/ReluGrad6train/gradients/layer_4/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Â
(train/gradients/layer_4/add_grad/ReshapeReshape$train/gradients/layer_4/add_grad/Sum&train/gradients/layer_4/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
&train/gradients/layer_4/add_grad/Sum_1Sum*train/gradients/layer_4/Relu_grad/ReluGrad8train/gradients/layer_4/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ť
*train/gradients/layer_4/add_grad/Reshape_1Reshape&train/gradients/layer_4/add_grad/Sum_1(train/gradients/layer_4/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:

1train/gradients/layer_4/add_grad/tuple/group_depsNoOp)^train/gradients/layer_4/add_grad/Reshape+^train/gradients/layer_4/add_grad/Reshape_1

9train/gradients/layer_4/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_4/add_grad/Reshape2^train/gradients/layer_4/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_4/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/layer_4/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_4/add_grad/Reshape_12^train/gradients/layer_4/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_4/add_grad/Reshape_1*
_output_shapes	
:
ß
*train/gradients/layer_4/MatMul_grad/MatMulMatMul9train/gradients/layer_4/add_grad/tuple/control_dependencylayer_4/weights4/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
,train/gradients/layer_4/MatMul_grad/MatMul_1MatMullayer_3/Relu9train/gradients/layer_4/add_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( * 
_output_shapes
:


4train/gradients/layer_4/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_4/MatMul_grad/MatMul-^train/gradients/layer_4/MatMul_grad/MatMul_1

<train/gradients/layer_4/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_4/MatMul_grad/MatMul5^train/gradients/layer_4/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_4/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

>train/gradients/layer_4/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_4/MatMul_grad/MatMul_15^train/gradients/layer_4/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_4/MatMul_grad/MatMul_1* 
_output_shapes
:

ľ
*train/gradients/layer_3/Relu_grad/ReluGradReluGrad<train/gradients/layer_4/MatMul_grad/tuple/control_dependencylayer_3/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
&train/gradients/layer_3/add_grad/ShapeShapelayer_3/MatMul*
T0*
out_type0*
_output_shapes
:
s
(train/gradients/layer_3/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ţ
6train/gradients/layer_3/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_3/add_grad/Shape(train/gradients/layer_3/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ď
$train/gradients/layer_3/add_grad/SumSum*train/gradients/layer_3/Relu_grad/ReluGrad6train/gradients/layer_3/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Â
(train/gradients/layer_3/add_grad/ReshapeReshape$train/gradients/layer_3/add_grad/Sum&train/gradients/layer_3/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
&train/gradients/layer_3/add_grad/Sum_1Sum*train/gradients/layer_3/Relu_grad/ReluGrad8train/gradients/layer_3/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ť
*train/gradients/layer_3/add_grad/Reshape_1Reshape&train/gradients/layer_3/add_grad/Sum_1(train/gradients/layer_3/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:

1train/gradients/layer_3/add_grad/tuple/group_depsNoOp)^train/gradients/layer_3/add_grad/Reshape+^train/gradients/layer_3/add_grad/Reshape_1

9train/gradients/layer_3/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_3/add_grad/Reshape2^train/gradients/layer_3/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_3/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/layer_3/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_3/add_grad/Reshape_12^train/gradients/layer_3/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_3/add_grad/Reshape_1*
_output_shapes	
:
ß
*train/gradients/layer_3/MatMul_grad/MatMulMatMul9train/gradients/layer_3/add_grad/tuple/control_dependencylayer_3/weights3/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
,train/gradients/layer_3/MatMul_grad/MatMul_1MatMullayer_2/Relu9train/gradients/layer_3/add_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( * 
_output_shapes
:


4train/gradients/layer_3/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_3/MatMul_grad/MatMul-^train/gradients/layer_3/MatMul_grad/MatMul_1

<train/gradients/layer_3/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_3/MatMul_grad/MatMul5^train/gradients/layer_3/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_3/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

>train/gradients/layer_3/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_3/MatMul_grad/MatMul_15^train/gradients/layer_3/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_3/MatMul_grad/MatMul_1* 
_output_shapes
:

ľ
*train/gradients/layer_2/Relu_grad/ReluGradReluGrad<train/gradients/layer_3/MatMul_grad/tuple/control_dependencylayer_2/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
&train/gradients/layer_2/add_grad/ShapeShapelayer_2/MatMul*
T0*
out_type0*
_output_shapes
:
s
(train/gradients/layer_2/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ţ
6train/gradients/layer_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_2/add_grad/Shape(train/gradients/layer_2/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ď
$train/gradients/layer_2/add_grad/SumSum*train/gradients/layer_2/Relu_grad/ReluGrad6train/gradients/layer_2/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Â
(train/gradients/layer_2/add_grad/ReshapeReshape$train/gradients/layer_2/add_grad/Sum&train/gradients/layer_2/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
&train/gradients/layer_2/add_grad/Sum_1Sum*train/gradients/layer_2/Relu_grad/ReluGrad8train/gradients/layer_2/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ť
*train/gradients/layer_2/add_grad/Reshape_1Reshape&train/gradients/layer_2/add_grad/Sum_1(train/gradients/layer_2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:

1train/gradients/layer_2/add_grad/tuple/group_depsNoOp)^train/gradients/layer_2/add_grad/Reshape+^train/gradients/layer_2/add_grad/Reshape_1

9train/gradients/layer_2/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_2/add_grad/Reshape2^train/gradients/layer_2/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_2/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/layer_2/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_2/add_grad/Reshape_12^train/gradients/layer_2/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_2/add_grad/Reshape_1*
_output_shapes	
:
ß
*train/gradients/layer_2/MatMul_grad/MatMulMatMul9train/gradients/layer_2/add_grad/tuple/control_dependencylayer_2/weights2/read*
T0*
transpose_a( *
transpose_b(*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
,train/gradients/layer_2/MatMul_grad/MatMul_1MatMullayer_1/Relu9train/gradients/layer_2/add_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( * 
_output_shapes
:


4train/gradients/layer_2/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_2/MatMul_grad/MatMul-^train/gradients/layer_2/MatMul_grad/MatMul_1

<train/gradients/layer_2/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_2/MatMul_grad/MatMul5^train/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

>train/gradients/layer_2/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_2/MatMul_grad/MatMul_15^train/gradients/layer_2/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_2/MatMul_grad/MatMul_1* 
_output_shapes
:

ľ
*train/gradients/layer_1/Relu_grad/ReluGradReluGrad<train/gradients/layer_2/MatMul_grad/tuple/control_dependencylayer_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
&train/gradients/layer_1/add_grad/ShapeShapelayer_1/MatMul*
T0*
out_type0*
_output_shapes
:
s
(train/gradients/layer_1/add_grad/Shape_1Const*
dtype0*
valueB:*
_output_shapes
:
Ţ
6train/gradients/layer_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs&train/gradients/layer_1/add_grad/Shape(train/gradients/layer_1/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ď
$train/gradients/layer_1/add_grad/SumSum*train/gradients/layer_1/Relu_grad/ReluGrad6train/gradients/layer_1/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
Â
(train/gradients/layer_1/add_grad/ReshapeReshape$train/gradients/layer_1/add_grad/Sum&train/gradients/layer_1/add_grad/Shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
&train/gradients/layer_1/add_grad/Sum_1Sum*train/gradients/layer_1/Relu_grad/ReluGrad8train/gradients/layer_1/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
ť
*train/gradients/layer_1/add_grad/Reshape_1Reshape&train/gradients/layer_1/add_grad/Sum_1(train/gradients/layer_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes	
:

1train/gradients/layer_1/add_grad/tuple/group_depsNoOp)^train/gradients/layer_1/add_grad/Reshape+^train/gradients/layer_1/add_grad/Reshape_1

9train/gradients/layer_1/add_grad/tuple/control_dependencyIdentity(train/gradients/layer_1/add_grad/Reshape2^train/gradients/layer_1/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/layer_1/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

;train/gradients/layer_1/add_grad/tuple/control_dependency_1Identity*train/gradients/layer_1/add_grad/Reshape_12^train/gradients/layer_1/add_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_1/add_grad/Reshape_1*
_output_shapes	
:
Ţ
*train/gradients/layer_1/MatMul_grad/MatMulMatMul9train/gradients/layer_1/add_grad/tuple/control_dependencylayer_1/weights1/read*
T0*
transpose_a( *
transpose_b(*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
,train/gradients/layer_1/MatMul_grad/MatMul_1MatMulinput/Placeholder9train/gradients/layer_1/add_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( *
_output_shapes
:	

4train/gradients/layer_1/MatMul_grad/tuple/group_depsNoOp+^train/gradients/layer_1/MatMul_grad/MatMul-^train/gradients/layer_1/MatMul_grad/MatMul_1

<train/gradients/layer_1/MatMul_grad/tuple/control_dependencyIdentity*train/gradients/layer_1/MatMul_grad/MatMul5^train/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/layer_1/MatMul_grad/MatMul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

>train/gradients/layer_1/MatMul_grad/tuple/control_dependency_1Identity,train/gradients/layer_1/MatMul_grad/MatMul_15^train/gradients/layer_1/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@train/gradients/layer_1/MatMul_grad/MatMul_1*
_output_shapes
:	

train/beta1_power/initial_valueConst*
dtype0*
valueB
 *fff?*"
_class
loc:@layer_1/biases1*
_output_shapes
: 

train/beta1_power
VariableV2*
shape: *
shared_name *"
_class
loc:@layer_1/biases1*
_output_shapes
: *
dtype0*
	container 
Ä
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes
: *
validate_shape(
z
train/beta1_power/readIdentitytrain/beta1_power*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 

train/beta2_power/initial_valueConst*
dtype0*
valueB
 *wž?*"
_class
loc:@layer_1/biases1*
_output_shapes
: 

train/beta2_power
VariableV2*
shape: *
shared_name *"
_class
loc:@layer_1/biases1*
_output_shapes
: *
dtype0*
	container 
Ä
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes
: *
validate_shape(
z
train/beta2_power/readIdentitytrain/beta2_power*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
Š
-train/layer_1/weights1/Adam/Initializer/zerosConst*
dtype0*
valueB	*    *#
_class
loc:@layer_1/weights1*
_output_shapes
:	
ś
train/layer_1/weights1/Adam
VariableV2*
shape:	*
shared_name *#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
dtype0*
	container 
đ
"train/layer_1/weights1/Adam/AssignAssigntrain/layer_1/weights1/Adam-train/layer_1/weights1/Adam/Initializer/zeros*
T0*
use_locking(*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
validate_shape(

 train/layer_1/weights1/Adam/readIdentitytrain/layer_1/weights1/Adam*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes
:	
Ť
/train/layer_1/weights1/Adam_1/Initializer/zerosConst*
dtype0*
valueB	*    *#
_class
loc:@layer_1/weights1*
_output_shapes
:	
¸
train/layer_1/weights1/Adam_1
VariableV2*
shape:	*
shared_name *#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
dtype0*
	container 
ö
$train/layer_1/weights1/Adam_1/AssignAssigntrain/layer_1/weights1/Adam_1/train/layer_1/weights1/Adam_1/Initializer/zeros*
T0*
use_locking(*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
validate_shape(

"train/layer_1/weights1/Adam_1/readIdentitytrain/layer_1/weights1/Adam_1*
T0*#
_class
loc:@layer_1/weights1*
_output_shapes
:	

,train/layer_1/biases1/Adam/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_1/biases1*
_output_shapes	
:
Ź
train/layer_1/biases1/Adam
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
dtype0*
	container 
č
!train/layer_1/biases1/Adam/AssignAssigntrain/layer_1/biases1/Adam,train/layer_1/biases1/Adam/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
validate_shape(

train/layer_1/biases1/Adam/readIdentitytrain/layer_1/biases1/Adam*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes	
:
Ą
.train/layer_1/biases1/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_1/biases1*
_output_shapes	
:
Ž
train/layer_1/biases1/Adam_1
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
dtype0*
	container 
î
#train/layer_1/biases1/Adam_1/AssignAssigntrain/layer_1/biases1/Adam_1.train/layer_1/biases1/Adam_1/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
validate_shape(

!train/layer_1/biases1/Adam_1/readIdentitytrain/layer_1/biases1/Adam_1*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes	
:
Ť
-train/layer_2/weights2/Adam/Initializer/zerosConst*
dtype0*
valueB
*    *#
_class
loc:@layer_2/weights2* 
_output_shapes
:

¸
train/layer_2/weights2/Adam
VariableV2*
shape:
*
shared_name *#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
dtype0*
	container 
ń
"train/layer_2/weights2/Adam/AssignAssigntrain/layer_2/weights2/Adam-train/layer_2/weights2/Adam/Initializer/zeros*
T0*
use_locking(*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
validate_shape(

 train/layer_2/weights2/Adam/readIdentitytrain/layer_2/weights2/Adam*
T0*#
_class
loc:@layer_2/weights2* 
_output_shapes
:

­
/train/layer_2/weights2/Adam_1/Initializer/zerosConst*
dtype0*
valueB
*    *#
_class
loc:@layer_2/weights2* 
_output_shapes
:

ş
train/layer_2/weights2/Adam_1
VariableV2*
shape:
*
shared_name *#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
dtype0*
	container 
÷
$train/layer_2/weights2/Adam_1/AssignAssigntrain/layer_2/weights2/Adam_1/train/layer_2/weights2/Adam_1/Initializer/zeros*
T0*
use_locking(*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
validate_shape(

"train/layer_2/weights2/Adam_1/readIdentitytrain/layer_2/weights2/Adam_1*
T0*#
_class
loc:@layer_2/weights2* 
_output_shapes
:


,train/layer_2/biases2/Adam/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_2/biases2*
_output_shapes	
:
Ź
train/layer_2/biases2/Adam
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
dtype0*
	container 
č
!train/layer_2/biases2/Adam/AssignAssigntrain/layer_2/biases2/Adam,train/layer_2/biases2/Adam/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
validate_shape(

train/layer_2/biases2/Adam/readIdentitytrain/layer_2/biases2/Adam*
T0*"
_class
loc:@layer_2/biases2*
_output_shapes	
:
Ą
.train/layer_2/biases2/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_2/biases2*
_output_shapes	
:
Ž
train/layer_2/biases2/Adam_1
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
dtype0*
	container 
î
#train/layer_2/biases2/Adam_1/AssignAssigntrain/layer_2/biases2/Adam_1.train/layer_2/biases2/Adam_1/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
validate_shape(

!train/layer_2/biases2/Adam_1/readIdentitytrain/layer_2/biases2/Adam_1*
T0*"
_class
loc:@layer_2/biases2*
_output_shapes	
:
Ť
-train/layer_3/weights3/Adam/Initializer/zerosConst*
dtype0*
valueB
*    *#
_class
loc:@layer_3/weights3* 
_output_shapes
:

¸
train/layer_3/weights3/Adam
VariableV2*
shape:
*
shared_name *#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
dtype0*
	container 
ń
"train/layer_3/weights3/Adam/AssignAssigntrain/layer_3/weights3/Adam-train/layer_3/weights3/Adam/Initializer/zeros*
T0*
use_locking(*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
validate_shape(

 train/layer_3/weights3/Adam/readIdentitytrain/layer_3/weights3/Adam*
T0*#
_class
loc:@layer_3/weights3* 
_output_shapes
:

­
/train/layer_3/weights3/Adam_1/Initializer/zerosConst*
dtype0*
valueB
*    *#
_class
loc:@layer_3/weights3* 
_output_shapes
:

ş
train/layer_3/weights3/Adam_1
VariableV2*
shape:
*
shared_name *#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
dtype0*
	container 
÷
$train/layer_3/weights3/Adam_1/AssignAssigntrain/layer_3/weights3/Adam_1/train/layer_3/weights3/Adam_1/Initializer/zeros*
T0*
use_locking(*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
validate_shape(

"train/layer_3/weights3/Adam_1/readIdentitytrain/layer_3/weights3/Adam_1*
T0*#
_class
loc:@layer_3/weights3* 
_output_shapes
:


,train/layer_3/biases3/Adam/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_3/biases3*
_output_shapes	
:
Ź
train/layer_3/biases3/Adam
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
dtype0*
	container 
č
!train/layer_3/biases3/Adam/AssignAssigntrain/layer_3/biases3/Adam,train/layer_3/biases3/Adam/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
validate_shape(

train/layer_3/biases3/Adam/readIdentitytrain/layer_3/biases3/Adam*
T0*"
_class
loc:@layer_3/biases3*
_output_shapes	
:
Ą
.train/layer_3/biases3/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_3/biases3*
_output_shapes	
:
Ž
train/layer_3/biases3/Adam_1
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
dtype0*
	container 
î
#train/layer_3/biases3/Adam_1/AssignAssigntrain/layer_3/biases3/Adam_1.train/layer_3/biases3/Adam_1/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
validate_shape(

!train/layer_3/biases3/Adam_1/readIdentitytrain/layer_3/biases3/Adam_1*
T0*"
_class
loc:@layer_3/biases3*
_output_shapes	
:
Ť
-train/layer_4/weights4/Adam/Initializer/zerosConst*
dtype0*
valueB
*    *#
_class
loc:@layer_4/weights4* 
_output_shapes
:

¸
train/layer_4/weights4/Adam
VariableV2*
shape:
*
shared_name *#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
dtype0*
	container 
ń
"train/layer_4/weights4/Adam/AssignAssigntrain/layer_4/weights4/Adam-train/layer_4/weights4/Adam/Initializer/zeros*
T0*
use_locking(*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
validate_shape(

 train/layer_4/weights4/Adam/readIdentitytrain/layer_4/weights4/Adam*
T0*#
_class
loc:@layer_4/weights4* 
_output_shapes
:

­
/train/layer_4/weights4/Adam_1/Initializer/zerosConst*
dtype0*
valueB
*    *#
_class
loc:@layer_4/weights4* 
_output_shapes
:

ş
train/layer_4/weights4/Adam_1
VariableV2*
shape:
*
shared_name *#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
dtype0*
	container 
÷
$train/layer_4/weights4/Adam_1/AssignAssigntrain/layer_4/weights4/Adam_1/train/layer_4/weights4/Adam_1/Initializer/zeros*
T0*
use_locking(*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
validate_shape(

"train/layer_4/weights4/Adam_1/readIdentitytrain/layer_4/weights4/Adam_1*
T0*#
_class
loc:@layer_4/weights4* 
_output_shapes
:


,train/layer_4/biases4/Adam/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_4/biases4*
_output_shapes	
:
Ź
train/layer_4/biases4/Adam
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
dtype0*
	container 
č
!train/layer_4/biases4/Adam/AssignAssigntrain/layer_4/biases4/Adam,train/layer_4/biases4/Adam/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
validate_shape(

train/layer_4/biases4/Adam/readIdentitytrain/layer_4/biases4/Adam*
T0*"
_class
loc:@layer_4/biases4*
_output_shapes	
:
Ą
.train/layer_4/biases4/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *"
_class
loc:@layer_4/biases4*
_output_shapes	
:
Ž
train/layer_4/biases4/Adam_1
VariableV2*
shape:*
shared_name *"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
dtype0*
	container 
î
#train/layer_4/biases4/Adam_1/AssignAssigntrain/layer_4/biases4/Adam_1.train/layer_4/biases4/Adam_1/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
validate_shape(

!train/layer_4/biases4/Adam_1/readIdentitytrain/layer_4/biases4/Adam_1*
T0*"
_class
loc:@layer_4/biases4*
_output_shapes	
:
§
,train/output/weights5/Adam/Initializer/zerosConst*
dtype0*
valueB	*    *"
_class
loc:@output/weights5*
_output_shapes
:	
´
train/output/weights5/Adam
VariableV2*
shape:	*
shared_name *"
_class
loc:@output/weights5*
_output_shapes
:	*
dtype0*
	container 
ě
!train/output/weights5/Adam/AssignAssigntrain/output/weights5/Adam,train/output/weights5/Adam/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@output/weights5*
_output_shapes
:	*
validate_shape(

train/output/weights5/Adam/readIdentitytrain/output/weights5/Adam*
T0*"
_class
loc:@output/weights5*
_output_shapes
:	
Š
.train/output/weights5/Adam_1/Initializer/zerosConst*
dtype0*
valueB	*    *"
_class
loc:@output/weights5*
_output_shapes
:	
ś
train/output/weights5/Adam_1
VariableV2*
shape:	*
shared_name *"
_class
loc:@output/weights5*
_output_shapes
:	*
dtype0*
	container 
ň
#train/output/weights5/Adam_1/AssignAssigntrain/output/weights5/Adam_1.train/output/weights5/Adam_1/Initializer/zeros*
T0*
use_locking(*"
_class
loc:@output/weights5*
_output_shapes
:	*
validate_shape(

!train/output/weights5/Adam_1/readIdentitytrain/output/weights5/Adam_1*
T0*"
_class
loc:@output/weights5*
_output_shapes
:	

+train/output/biases5/Adam/Initializer/zerosConst*
dtype0*
valueB*    *!
_class
loc:@output/biases5*
_output_shapes
:
¨
train/output/biases5/Adam
VariableV2*
shape:*
shared_name *!
_class
loc:@output/biases5*
_output_shapes
:*
dtype0*
	container 
ă
 train/output/biases5/Adam/AssignAssigntrain/output/biases5/Adam+train/output/biases5/Adam/Initializer/zeros*
T0*
use_locking(*!
_class
loc:@output/biases5*
_output_shapes
:*
validate_shape(

train/output/biases5/Adam/readIdentitytrain/output/biases5/Adam*
T0*!
_class
loc:@output/biases5*
_output_shapes
:

-train/output/biases5/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *!
_class
loc:@output/biases5*
_output_shapes
:
Ş
train/output/biases5/Adam_1
VariableV2*
shape:*
shared_name *!
_class
loc:@output/biases5*
_output_shapes
:*
dtype0*
	container 
é
"train/output/biases5/Adam_1/AssignAssigntrain/output/biases5/Adam_1-train/output/biases5/Adam_1/Initializer/zeros*
T0*
use_locking(*!
_class
loc:@output/biases5*
_output_shapes
:*
validate_shape(

 train/output/biases5/Adam_1/readIdentitytrain/output/biases5/Adam_1*
T0*!
_class
loc:@output/biases5*
_output_shapes
:
]
train/Adam/learning_rateConst*
dtype0*
valueB
 *
×Ł;*
_output_shapes
: 
U
train/Adam/beta1Const*
dtype0*
valueB
 *fff?*
_output_shapes
: 
U
train/Adam/beta2Const*
dtype0*
valueB
 *wž?*
_output_shapes
: 
W
train/Adam/epsilonConst*
dtype0*
valueB
 *wĚ+2*
_output_shapes
: 
ż
,train/Adam/update_layer_1/weights1/ApplyAdam	ApplyAdamlayer_1/weights1train/layer_1/weights1/Adamtrain/layer_1/weights1/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_1/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@layer_1/weights1*
_output_shapes
:	
ł
+train/Adam/update_layer_1/biases1/ApplyAdam	ApplyAdamlayer_1/biases1train/layer_1/biases1/Adamtrain/layer_1/biases1/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_1/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@layer_1/biases1*
_output_shapes	
:
Ŕ
,train/Adam/update_layer_2/weights2/ApplyAdam	ApplyAdamlayer_2/weights2train/layer_2/weights2/Adamtrain/layer_2/weights2/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@layer_2/weights2* 
_output_shapes
:

ł
+train/Adam/update_layer_2/biases2/ApplyAdam	ApplyAdamlayer_2/biases2train/layer_2/biases2/Adamtrain/layer_2/biases2/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_2/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@layer_2/biases2*
_output_shapes	
:
Ŕ
,train/Adam/update_layer_3/weights3/ApplyAdam	ApplyAdamlayer_3/weights3train/layer_3/weights3/Adamtrain/layer_3/weights3/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@layer_3/weights3* 
_output_shapes
:

ł
+train/Adam/update_layer_3/biases3/ApplyAdam	ApplyAdamlayer_3/biases3train/layer_3/biases3/Adamtrain/layer_3/biases3/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_3/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@layer_3/biases3*
_output_shapes	
:
Ŕ
,train/Adam/update_layer_4/weights4/ApplyAdam	ApplyAdamlayer_4/weights4train/layer_4/weights4/Adamtrain/layer_4/weights4/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon>train/gradients/layer_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@layer_4/weights4* 
_output_shapes
:

ł
+train/Adam/update_layer_4/biases4/ApplyAdam	ApplyAdamlayer_4/biases4train/layer_4/biases4/Adamtrain/layer_4/biases4/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon;train/gradients/layer_4/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@layer_4/biases4*
_output_shapes	
:
š
+train/Adam/update_output/weights5/ApplyAdam	ApplyAdamoutput/weights5train/output/weights5/Adamtrain/output/weights5/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon=train/gradients/output/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@output/weights5*
_output_shapes
:	
Ź
*train/Adam/update_output/biases5/ApplyAdam	ApplyAdamoutput/biases5train/output/biases5/Adamtrain/output/biases5/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon:train/gradients/output/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@output/biases5*
_output_shapes
:
Ó
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_4/weights4/ApplyAdam,^train/Adam/update_layer_4/biases4/ApplyAdam,^train/Adam/update_output/weights5/ApplyAdam+^train/Adam/update_output/biases5/ApplyAdam*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
Ź
train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
T0*
use_locking( *"
_class
loc:@layer_1/biases1*
_output_shapes
: *
validate_shape(
Ő
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_4/weights4/ApplyAdam,^train/Adam/update_layer_4/biases4/ApplyAdam,^train/Adam/update_output/weights5/ApplyAdam+^train/Adam/update_output/biases5/ApplyAdam*
T0*"
_class
loc:@layer_1/biases1*
_output_shapes
: 
°
train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
T0*
use_locking( *"
_class
loc:@layer_1/biases1*
_output_shapes
: *
validate_shape(


train/AdamNoOp-^train/Adam/update_layer_1/weights1/ApplyAdam,^train/Adam/update_layer_1/biases1/ApplyAdam-^train/Adam/update_layer_2/weights2/ApplyAdam,^train/Adam/update_layer_2/biases2/ApplyAdam-^train/Adam/update_layer_3/weights3/ApplyAdam,^train/Adam/update_layer_3/biases3/ApplyAdam-^train/Adam/update_layer_4/weights4/ApplyAdam,^train/Adam/update_layer_4/biases4/ApplyAdam,^train/Adam/update_output/weights5/ApplyAdam+^train/Adam/update_output/biases5/ApplyAdam^train/Adam/Assign^train/Adam/Assign_1
n
logging/current_cost/tagsConst*
dtype0*%
valueB Blogging/current_cost*
_output_shapes
: 
l
logging/current_costScalarSummarylogging/current_cost/tags	cost/Mean*
T0*
_output_shapes
: 
a
logging/Merge/MergeSummaryMergeSummarylogging/current_cost*
_output_shapes
: *
N
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
˙
save/SaveV2/tensor_namesConst*
dtype0*˛
value¨BĽ Blayer_1/biases1Blayer_1/weights1Blayer_2/biases2Blayer_2/weights2Blayer_3/biases3Blayer_3/weights3Blayer_4/biases4Blayer_4/weights4Boutput/biases5Boutput/weights5Btrain/beta1_powerBtrain/beta2_powerBtrain/layer_1/biases1/AdamBtrain/layer_1/biases1/Adam_1Btrain/layer_1/weights1/AdamBtrain/layer_1/weights1/Adam_1Btrain/layer_2/biases2/AdamBtrain/layer_2/biases2/Adam_1Btrain/layer_2/weights2/AdamBtrain/layer_2/weights2/Adam_1Btrain/layer_3/biases3/AdamBtrain/layer_3/biases3/Adam_1Btrain/layer_3/weights3/AdamBtrain/layer_3/weights3/Adam_1Btrain/layer_4/biases4/AdamBtrain/layer_4/biases4/Adam_1Btrain/layer_4/weights4/AdamBtrain/layer_4/weights4/Adam_1Btrain/output/biases5/AdamBtrain/output/biases5/Adam_1Btrain/output/weights5/AdamBtrain/output/weights5/Adam_1*
_output_shapes
: 
Ł
save/SaveV2/shape_and_slicesConst*
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: 
Ś
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_sliceslayer_1/biases1layer_1/weights1layer_2/biases2layer_2/weights2layer_3/biases3layer_3/weights3layer_4/biases4layer_4/weights4output/biases5output/weights5train/beta1_powertrain/beta2_powertrain/layer_1/biases1/Adamtrain/layer_1/biases1/Adam_1train/layer_1/weights1/Adamtrain/layer_1/weights1/Adam_1train/layer_2/biases2/Adamtrain/layer_2/biases2/Adam_1train/layer_2/weights2/Adamtrain/layer_2/weights2/Adam_1train/layer_3/biases3/Adamtrain/layer_3/biases3/Adam_1train/layer_3/weights3/Adamtrain/layer_3/weights3/Adam_1train/layer_4/biases4/Adamtrain/layer_4/biases4/Adam_1train/layer_4/weights4/Adamtrain/layer_4/weights4/Adam_1train/output/biases5/Adamtrain/output/biases5/Adam_1train/output/weights5/Adamtrain/output/weights5/Adam_1*.
dtypes$
"2 
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
s
save/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer_1/biases1*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Š
save/AssignAssignlayer_1/biases1save/RestoreV2*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
validate_shape(
v
save/RestoreV2_1/tensor_namesConst*
dtype0*%
valueBBlayer_1/weights1*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ł
save/Assign_1Assignlayer_1/weights1save/RestoreV2_1*
T0*
use_locking(*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
validate_shape(
u
save/RestoreV2_2/tensor_namesConst*
dtype0*$
valueBBlayer_2/biases2*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save/Assign_2Assignlayer_2/biases2save/RestoreV2_2*
T0*
use_locking(*"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
validate_shape(
v
save/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_2/weights2*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
´
save/Assign_3Assignlayer_2/weights2save/RestoreV2_3*
T0*
use_locking(*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
validate_shape(
u
save/RestoreV2_4/tensor_namesConst*
dtype0*$
valueBBlayer_3/biases3*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save/Assign_4Assignlayer_3/biases3save/RestoreV2_4*
T0*
use_locking(*"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
validate_shape(
v
save/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_3/weights3*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
´
save/Assign_5Assignlayer_3/weights3save/RestoreV2_5*
T0*
use_locking(*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
validate_shape(
u
save/RestoreV2_6/tensor_namesConst*
dtype0*$
valueBBlayer_4/biases4*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save/Assign_6Assignlayer_4/biases4save/RestoreV2_6*
T0*
use_locking(*"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
validate_shape(
v
save/RestoreV2_7/tensor_namesConst*
dtype0*%
valueBBlayer_4/weights4*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
´
save/Assign_7Assignlayer_4/weights4save/RestoreV2_7*
T0*
use_locking(*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
validate_shape(
t
save/RestoreV2_8/tensor_namesConst*
dtype0*#
valueBBoutput/biases5*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Ş
save/Assign_8Assignoutput/biases5save/RestoreV2_8*
T0*
use_locking(*!
_class
loc:@output/biases5*
_output_shapes
:*
validate_shape(
u
save/RestoreV2_9/tensor_namesConst*
dtype0*$
valueBBoutput/weights5*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
ą
save/Assign_9Assignoutput/weights5save/RestoreV2_9*
T0*
use_locking(*"
_class
loc:@output/weights5*
_output_shapes
:	*
validate_shape(
x
save/RestoreV2_10/tensor_namesConst*
dtype0*&
valueBBtrain/beta1_power*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Ź
save/Assign_10Assigntrain/beta1_powersave/RestoreV2_10*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes
: *
validate_shape(
x
save/RestoreV2_11/tensor_namesConst*
dtype0*&
valueBBtrain/beta2_power*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Ź
save/Assign_11Assigntrain/beta2_powersave/RestoreV2_11*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes
: *
validate_shape(

save/RestoreV2_12/tensor_namesConst*
dtype0*/
value&B$Btrain/layer_1/biases1/Adam*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save/Assign_12Assigntrain/layer_1/biases1/Adamsave/RestoreV2_12*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
validate_shape(

save/RestoreV2_13/tensor_namesConst*
dtype0*1
value(B&Btrain/layer_1/biases1/Adam_1*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
ź
save/Assign_13Assigntrain/layer_1/biases1/Adam_1save/RestoreV2_13*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
validate_shape(

save/RestoreV2_14/tensor_namesConst*
dtype0*0
value'B%Btrain/layer_1/weights1/Adam*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Ŕ
save/Assign_14Assigntrain/layer_1/weights1/Adamsave/RestoreV2_14*
T0*
use_locking(*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
validate_shape(

save/RestoreV2_15/tensor_namesConst*
dtype0*2
value)B'Btrain/layer_1/weights1/Adam_1*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
Â
save/Assign_15Assigntrain/layer_1/weights1/Adam_1save/RestoreV2_15*
T0*
use_locking(*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
validate_shape(

save/RestoreV2_16/tensor_namesConst*
dtype0*/
value&B$Btrain/layer_2/biases2/Adam*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save/Assign_16Assigntrain/layer_2/biases2/Adamsave/RestoreV2_16*
T0*
use_locking(*"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
validate_shape(

save/RestoreV2_17/tensor_namesConst*
dtype0*1
value(B&Btrain/layer_2/biases2/Adam_1*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
ź
save/Assign_17Assigntrain/layer_2/biases2/Adam_1save/RestoreV2_17*
T0*
use_locking(*"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
validate_shape(

save/RestoreV2_18/tensor_namesConst*
dtype0*0
value'B%Btrain/layer_2/weights2/Adam*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
Á
save/Assign_18Assigntrain/layer_2/weights2/Adamsave/RestoreV2_18*
T0*
use_locking(*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
validate_shape(

save/RestoreV2_19/tensor_namesConst*
dtype0*2
value)B'Btrain/layer_2/weights2/Adam_1*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
Ă
save/Assign_19Assigntrain/layer_2/weights2/Adam_1save/RestoreV2_19*
T0*
use_locking(*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
validate_shape(

save/RestoreV2_20/tensor_namesConst*
dtype0*/
value&B$Btrain/layer_3/biases3/Adam*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save/Assign_20Assigntrain/layer_3/biases3/Adamsave/RestoreV2_20*
T0*
use_locking(*"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
validate_shape(

save/RestoreV2_21/tensor_namesConst*
dtype0*1
value(B&Btrain/layer_3/biases3/Adam_1*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
ź
save/Assign_21Assigntrain/layer_3/biases3/Adam_1save/RestoreV2_21*
T0*
use_locking(*"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
validate_shape(

save/RestoreV2_22/tensor_namesConst*
dtype0*0
value'B%Btrain/layer_3/weights3/Adam*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
Á
save/Assign_22Assigntrain/layer_3/weights3/Adamsave/RestoreV2_22*
T0*
use_locking(*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
validate_shape(

save/RestoreV2_23/tensor_namesConst*
dtype0*2
value)B'Btrain/layer_3/weights3/Adam_1*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
Ă
save/Assign_23Assigntrain/layer_3/weights3/Adam_1save/RestoreV2_23*
T0*
use_locking(*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
validate_shape(

save/RestoreV2_24/tensor_namesConst*
dtype0*/
value&B$Btrain/layer_4/biases4/Adam*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
ş
save/Assign_24Assigntrain/layer_4/biases4/Adamsave/RestoreV2_24*
T0*
use_locking(*"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
validate_shape(

save/RestoreV2_25/tensor_namesConst*
dtype0*1
value(B&Btrain/layer_4/biases4/Adam_1*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
ź
save/Assign_25Assigntrain/layer_4/biases4/Adam_1save/RestoreV2_25*
T0*
use_locking(*"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
validate_shape(

save/RestoreV2_26/tensor_namesConst*
dtype0*0
value'B%Btrain/layer_4/weights4/Adam*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
Á
save/Assign_26Assigntrain/layer_4/weights4/Adamsave/RestoreV2_26*
T0*
use_locking(*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
validate_shape(

save/RestoreV2_27/tensor_namesConst*
dtype0*2
value)B'Btrain/layer_4/weights4/Adam_1*
_output_shapes
:
k
"save/RestoreV2_27/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
Ă
save/Assign_27Assigntrain/layer_4/weights4/Adam_1save/RestoreV2_27*
T0*
use_locking(*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
validate_shape(

save/RestoreV2_28/tensor_namesConst*
dtype0*.
value%B#Btrain/output/biases5/Adam*
_output_shapes
:
k
"save/RestoreV2_28/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
ˇ
save/Assign_28Assigntrain/output/biases5/Adamsave/RestoreV2_28*
T0*
use_locking(*!
_class
loc:@output/biases5*
_output_shapes
:*
validate_shape(

save/RestoreV2_29/tensor_namesConst*
dtype0*0
value'B%Btrain/output/biases5/Adam_1*
_output_shapes
:
k
"save/RestoreV2_29/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
š
save/Assign_29Assigntrain/output/biases5/Adam_1save/RestoreV2_29*
T0*
use_locking(*!
_class
loc:@output/biases5*
_output_shapes
:*
validate_shape(

save/RestoreV2_30/tensor_namesConst*
dtype0*/
value&B$Btrain/output/weights5/Adam*
_output_shapes
:
k
"save/RestoreV2_30/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save/Assign_30Assigntrain/output/weights5/Adamsave/RestoreV2_30*
T0*
use_locking(*"
_class
loc:@output/weights5*
_output_shapes
:	*
validate_shape(

save/RestoreV2_31/tensor_namesConst*
dtype0*1
value(B&Btrain/output/weights5/Adam_1*
_output_shapes
:
k
"save/RestoreV2_31/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
Ŕ
save/Assign_31Assigntrain/output/weights5/Adam_1save/RestoreV2_31*
T0*
use_locking(*"
_class
loc:@output/weights5*
_output_shapes
:	*
validate_shape(
Ź
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31
Š
initNoOp^layer_1/weights1/Assign^layer_1/biases1/Assign^layer_2/weights2/Assign^layer_2/biases2/Assign^layer_3/weights3/Assign^layer_3/biases3/Assign^layer_4/weights4/Assign^layer_4/biases4/Assign^output/weights5/Assign^output/biases5/Assign^train/beta1_power/Assign^train/beta2_power/Assign#^train/layer_1/weights1/Adam/Assign%^train/layer_1/weights1/Adam_1/Assign"^train/layer_1/biases1/Adam/Assign$^train/layer_1/biases1/Adam_1/Assign#^train/layer_2/weights2/Adam/Assign%^train/layer_2/weights2/Adam_1/Assign"^train/layer_2/biases2/Adam/Assign$^train/layer_2/biases2/Adam_1/Assign#^train/layer_3/weights3/Adam/Assign%^train/layer_3/weights3/Adam_1/Assign"^train/layer_3/biases3/Adam/Assign$^train/layer_3/biases3/Adam_1/Assign#^train/layer_4/weights4/Adam/Assign%^train/layer_4/weights4/Adam_1/Assign"^train/layer_4/biases4/Adam/Assign$^train/layer_4/biases4/Adam_1/Assign"^train/output/weights5/Adam/Assign$^train/output/weights5/Adam_1/Assign!^train/output/biases5/Adam/Assign#^train/output/biases5/Adam_1/Assign
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_abfaf9ea6be14c71a41fc159d8e4d8e8/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
_output_shapes
: *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst*
dtype0*˛
value¨BĽ Blayer_1/biases1Blayer_1/weights1Blayer_2/biases2Blayer_2/weights2Blayer_3/biases3Blayer_3/weights3Blayer_4/biases4Blayer_4/weights4Boutput/biases5Boutput/weights5Btrain/beta1_powerBtrain/beta2_powerBtrain/layer_1/biases1/AdamBtrain/layer_1/biases1/Adam_1Btrain/layer_1/weights1/AdamBtrain/layer_1/weights1/Adam_1Btrain/layer_2/biases2/AdamBtrain/layer_2/biases2/Adam_1Btrain/layer_2/weights2/AdamBtrain/layer_2/weights2/Adam_1Btrain/layer_3/biases3/AdamBtrain/layer_3/biases3/Adam_1Btrain/layer_3/weights3/AdamBtrain/layer_3/weights3/Adam_1Btrain/layer_4/biases4/AdamBtrain/layer_4/biases4/Adam_1Btrain/layer_4/weights4/AdamBtrain/layer_4/weights4/Adam_1Btrain/output/biases5/AdamBtrain/output/biases5/Adam_1Btrain/output/weights5/AdamBtrain/output/weights5/Adam_1*
_output_shapes
: 
Ľ
save_1/SaveV2/shape_and_slicesConst*
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
: 
¸
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_sliceslayer_1/biases1layer_1/weights1layer_2/biases2layer_2/weights2layer_3/biases3layer_3/weights3layer_4/biases4layer_4/weights4output/biases5output/weights5train/beta1_powertrain/beta2_powertrain/layer_1/biases1/Adamtrain/layer_1/biases1/Adam_1train/layer_1/weights1/Adamtrain/layer_1/weights1/Adam_1train/layer_2/biases2/Adamtrain/layer_2/biases2/Adam_1train/layer_2/weights2/Adamtrain/layer_2/weights2/Adam_1train/layer_3/biases3/Adamtrain/layer_3/biases3/Adam_1train/layer_3/weights3/Adamtrain/layer_3/weights3/Adam_1train/layer_4/biases4/Adamtrain/layer_4/biases4/Adam_1train/layer_4/weights4/Adamtrain/layer_4/weights4/Adam_1train/output/biases5/Adamtrain/output/biases5/Adam_1train/output/weights5/Adamtrain/output/weights5/Adam_1*.
dtypes$
"2 

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*
_output_shapes
:*

axis *
N

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
u
save_1/RestoreV2/tensor_namesConst*
dtype0*$
valueBBlayer_1/biases1*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save_1/AssignAssignlayer_1/biases1save_1/RestoreV2*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
validate_shape(
x
save_1/RestoreV2_1/tensor_namesConst*
dtype0*%
valueBBlayer_1/weights1*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ˇ
save_1/Assign_1Assignlayer_1/weights1save_1/RestoreV2_1*
T0*
use_locking(*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
validate_shape(
w
save_1/RestoreV2_2/tensor_namesConst*
dtype0*$
valueBBlayer_2/biases2*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
ą
save_1/Assign_2Assignlayer_2/biases2save_1/RestoreV2_2*
T0*
use_locking(*"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
validate_shape(
x
save_1/RestoreV2_3/tensor_namesConst*
dtype0*%
valueBBlayer_2/weights2*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
¸
save_1/Assign_3Assignlayer_2/weights2save_1/RestoreV2_3*
T0*
use_locking(*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
validate_shape(
w
save_1/RestoreV2_4/tensor_namesConst*
dtype0*$
valueBBlayer_3/biases3*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
ą
save_1/Assign_4Assignlayer_3/biases3save_1/RestoreV2_4*
T0*
use_locking(*"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
validate_shape(
x
save_1/RestoreV2_5/tensor_namesConst*
dtype0*%
valueBBlayer_3/weights3*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
¸
save_1/Assign_5Assignlayer_3/weights3save_1/RestoreV2_5*
T0*
use_locking(*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
validate_shape(
w
save_1/RestoreV2_6/tensor_namesConst*
dtype0*$
valueBBlayer_4/biases4*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
ą
save_1/Assign_6Assignlayer_4/biases4save_1/RestoreV2_6*
T0*
use_locking(*"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
validate_shape(
x
save_1/RestoreV2_7/tensor_namesConst*
dtype0*%
valueBBlayer_4/weights4*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
¸
save_1/Assign_7Assignlayer_4/weights4save_1/RestoreV2_7*
T0*
use_locking(*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
validate_shape(
v
save_1/RestoreV2_8/tensor_namesConst*
dtype0*#
valueBBoutput/biases5*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save_1/Assign_8Assignoutput/biases5save_1/RestoreV2_8*
T0*
use_locking(*!
_class
loc:@output/biases5*
_output_shapes
:*
validate_shape(
w
save_1/RestoreV2_9/tensor_namesConst*
dtype0*$
valueBBoutput/weights5*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
ľ
save_1/Assign_9Assignoutput/weights5save_1/RestoreV2_9*
T0*
use_locking(*"
_class
loc:@output/weights5*
_output_shapes
:	*
validate_shape(
z
 save_1/RestoreV2_10/tensor_namesConst*
dtype0*&
valueBBtrain/beta1_power*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
°
save_1/Assign_10Assigntrain/beta1_powersave_1/RestoreV2_10*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes
: *
validate_shape(
z
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*&
valueBBtrain/beta2_power*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
°
save_1/Assign_11Assigntrain/beta2_powersave_1/RestoreV2_11*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes
: *
validate_shape(

 save_1/RestoreV2_12/tensor_namesConst*
dtype0*/
value&B$Btrain/layer_1/biases1/Adam*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save_1/Assign_12Assigntrain/layer_1/biases1/Adamsave_1/RestoreV2_12*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
validate_shape(

 save_1/RestoreV2_13/tensor_namesConst*
dtype0*1
value(B&Btrain/layer_1/biases1/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
Ŕ
save_1/Assign_13Assigntrain/layer_1/biases1/Adam_1save_1/RestoreV2_13*
T0*
use_locking(*"
_class
loc:@layer_1/biases1*
_output_shapes	
:*
validate_shape(

 save_1/RestoreV2_14/tensor_namesConst*
dtype0*0
value'B%Btrain/layer_1/weights1/Adam*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Ä
save_1/Assign_14Assigntrain/layer_1/weights1/Adamsave_1/RestoreV2_14*
T0*
use_locking(*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
validate_shape(

 save_1/RestoreV2_15/tensor_namesConst*
dtype0*2
value)B'Btrain/layer_1/weights1/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
Ć
save_1/Assign_15Assigntrain/layer_1/weights1/Adam_1save_1/RestoreV2_15*
T0*
use_locking(*#
_class
loc:@layer_1/weights1*
_output_shapes
:	*
validate_shape(

 save_1/RestoreV2_16/tensor_namesConst*
dtype0*/
value&B$Btrain/layer_2/biases2/Adam*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save_1/Assign_16Assigntrain/layer_2/biases2/Adamsave_1/RestoreV2_16*
T0*
use_locking(*"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
validate_shape(

 save_1/RestoreV2_17/tensor_namesConst*
dtype0*1
value(B&Btrain/layer_2/biases2/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
Ŕ
save_1/Assign_17Assigntrain/layer_2/biases2/Adam_1save_1/RestoreV2_17*
T0*
use_locking(*"
_class
loc:@layer_2/biases2*
_output_shapes	
:*
validate_shape(

 save_1/RestoreV2_18/tensor_namesConst*
dtype0*0
value'B%Btrain/layer_2/weights2/Adam*
_output_shapes
:
m
$save_1/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
Ĺ
save_1/Assign_18Assigntrain/layer_2/weights2/Adamsave_1/RestoreV2_18*
T0*
use_locking(*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
validate_shape(

 save_1/RestoreV2_19/tensor_namesConst*
dtype0*2
value)B'Btrain/layer_2/weights2/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
Ç
save_1/Assign_19Assigntrain/layer_2/weights2/Adam_1save_1/RestoreV2_19*
T0*
use_locking(*#
_class
loc:@layer_2/weights2* 
_output_shapes
:
*
validate_shape(

 save_1/RestoreV2_20/tensor_namesConst*
dtype0*/
value&B$Btrain/layer_3/biases3/Adam*
_output_shapes
:
m
$save_1/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save_1/Assign_20Assigntrain/layer_3/biases3/Adamsave_1/RestoreV2_20*
T0*
use_locking(*"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
validate_shape(

 save_1/RestoreV2_21/tensor_namesConst*
dtype0*1
value(B&Btrain/layer_3/biases3/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
Ŕ
save_1/Assign_21Assigntrain/layer_3/biases3/Adam_1save_1/RestoreV2_21*
T0*
use_locking(*"
_class
loc:@layer_3/biases3*
_output_shapes	
:*
validate_shape(

 save_1/RestoreV2_22/tensor_namesConst*
dtype0*0
value'B%Btrain/layer_3/weights3/Adam*
_output_shapes
:
m
$save_1/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
Ĺ
save_1/Assign_22Assigntrain/layer_3/weights3/Adamsave_1/RestoreV2_22*
T0*
use_locking(*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
validate_shape(

 save_1/RestoreV2_23/tensor_namesConst*
dtype0*2
value)B'Btrain/layer_3/weights3/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_23/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
Ç
save_1/Assign_23Assigntrain/layer_3/weights3/Adam_1save_1/RestoreV2_23*
T0*
use_locking(*#
_class
loc:@layer_3/weights3* 
_output_shapes
:
*
validate_shape(

 save_1/RestoreV2_24/tensor_namesConst*
dtype0*/
value&B$Btrain/layer_4/biases4/Adam*
_output_shapes
:
m
$save_1/RestoreV2_24/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save_1/Assign_24Assigntrain/layer_4/biases4/Adamsave_1/RestoreV2_24*
T0*
use_locking(*"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
validate_shape(

 save_1/RestoreV2_25/tensor_namesConst*
dtype0*1
value(B&Btrain/layer_4/biases4/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_25/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
Ŕ
save_1/Assign_25Assigntrain/layer_4/biases4/Adam_1save_1/RestoreV2_25*
T0*
use_locking(*"
_class
loc:@layer_4/biases4*
_output_shapes	
:*
validate_shape(

 save_1/RestoreV2_26/tensor_namesConst*
dtype0*0
value'B%Btrain/layer_4/weights4/Adam*
_output_shapes
:
m
$save_1/RestoreV2_26/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
Ĺ
save_1/Assign_26Assigntrain/layer_4/weights4/Adamsave_1/RestoreV2_26*
T0*
use_locking(*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
validate_shape(

 save_1/RestoreV2_27/tensor_namesConst*
dtype0*2
value)B'Btrain/layer_4/weights4/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_27/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
Ç
save_1/Assign_27Assigntrain/layer_4/weights4/Adam_1save_1/RestoreV2_27*
T0*
use_locking(*#
_class
loc:@layer_4/weights4* 
_output_shapes
:
*
validate_shape(

 save_1/RestoreV2_28/tensor_namesConst*
dtype0*.
value%B#Btrain/output/biases5/Adam*
_output_shapes
:
m
$save_1/RestoreV2_28/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes
:
ť
save_1/Assign_28Assigntrain/output/biases5/Adamsave_1/RestoreV2_28*
T0*
use_locking(*!
_class
loc:@output/biases5*
_output_shapes
:*
validate_shape(

 save_1/RestoreV2_29/tensor_namesConst*
dtype0*0
value'B%Btrain/output/biases5/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_29/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes
:
˝
save_1/Assign_29Assigntrain/output/biases5/Adam_1save_1/RestoreV2_29*
T0*
use_locking(*!
_class
loc:@output/biases5*
_output_shapes
:*
validate_shape(

 save_1/RestoreV2_30/tensor_namesConst*
dtype0*/
value&B$Btrain/output/weights5/Adam*
_output_shapes
:
m
$save_1/RestoreV2_30/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
dtypes
2*
_output_shapes
:
Â
save_1/Assign_30Assigntrain/output/weights5/Adamsave_1/RestoreV2_30*
T0*
use_locking(*"
_class
loc:@output/weights5*
_output_shapes
:	*
validate_shape(

 save_1/RestoreV2_31/tensor_namesConst*
dtype0*1
value(B&Btrain/output/weights5/Adam_1*
_output_shapes
:
m
$save_1/RestoreV2_31/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
dtypes
2*
_output_shapes
:
Ä
save_1/Assign_31Assigntrain/output/weights5/Adam_1save_1/RestoreV2_31*
T0*
use_locking(*"
_class
loc:@output/weights5*
_output_shapes
:	*
validate_shape(
đ
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
train_op


train/Adam"ţ"
	variablesđ"í"
u
layer_1/weights1:0layer_1/weights1/Assignlayer_1/weights1/read:02-layer_1/weights1/Initializer/random_uniform:0
h
layer_1/biases1:0layer_1/biases1/Assignlayer_1/biases1/read:02#layer_1/biases1/Initializer/zeros:0
u
layer_2/weights2:0layer_2/weights2/Assignlayer_2/weights2/read:02-layer_2/weights2/Initializer/random_uniform:0
h
layer_2/biases2:0layer_2/biases2/Assignlayer_2/biases2/read:02#layer_2/biases2/Initializer/zeros:0
u
layer_3/weights3:0layer_3/weights3/Assignlayer_3/weights3/read:02-layer_3/weights3/Initializer/random_uniform:0
h
layer_3/biases3:0layer_3/biases3/Assignlayer_3/biases3/read:02#layer_3/biases3/Initializer/zeros:0
u
layer_4/weights4:0layer_4/weights4/Assignlayer_4/weights4/read:02-layer_4/weights4/Initializer/random_uniform:0
h
layer_4/biases4:0layer_4/biases4/Assignlayer_4/biases4/read:02#layer_4/biases4/Initializer/zeros:0
q
output/weights5:0output/weights5/Assignoutput/weights5/read:02,output/weights5/Initializer/random_uniform:0
d
output/biases5:0output/biases5/Assignoutput/biases5/read:02"output/biases5/Initializer/zeros:0
l
train/beta1_power:0train/beta1_power/Assigntrain/beta1_power/read:02!train/beta1_power/initial_value:0
l
train/beta2_power:0train/beta2_power/Assigntrain/beta2_power/read:02!train/beta2_power/initial_value:0

train/layer_1/weights1/Adam:0"train/layer_1/weights1/Adam/Assign"train/layer_1/weights1/Adam/read:02/train/layer_1/weights1/Adam/Initializer/zeros:0
 
train/layer_1/weights1/Adam_1:0$train/layer_1/weights1/Adam_1/Assign$train/layer_1/weights1/Adam_1/read:021train/layer_1/weights1/Adam_1/Initializer/zeros:0

train/layer_1/biases1/Adam:0!train/layer_1/biases1/Adam/Assign!train/layer_1/biases1/Adam/read:02.train/layer_1/biases1/Adam/Initializer/zeros:0

train/layer_1/biases1/Adam_1:0#train/layer_1/biases1/Adam_1/Assign#train/layer_1/biases1/Adam_1/read:020train/layer_1/biases1/Adam_1/Initializer/zeros:0

train/layer_2/weights2/Adam:0"train/layer_2/weights2/Adam/Assign"train/layer_2/weights2/Adam/read:02/train/layer_2/weights2/Adam/Initializer/zeros:0
 
train/layer_2/weights2/Adam_1:0$train/layer_2/weights2/Adam_1/Assign$train/layer_2/weights2/Adam_1/read:021train/layer_2/weights2/Adam_1/Initializer/zeros:0

train/layer_2/biases2/Adam:0!train/layer_2/biases2/Adam/Assign!train/layer_2/biases2/Adam/read:02.train/layer_2/biases2/Adam/Initializer/zeros:0

train/layer_2/biases2/Adam_1:0#train/layer_2/biases2/Adam_1/Assign#train/layer_2/biases2/Adam_1/read:020train/layer_2/biases2/Adam_1/Initializer/zeros:0

train/layer_3/weights3/Adam:0"train/layer_3/weights3/Adam/Assign"train/layer_3/weights3/Adam/read:02/train/layer_3/weights3/Adam/Initializer/zeros:0
 
train/layer_3/weights3/Adam_1:0$train/layer_3/weights3/Adam_1/Assign$train/layer_3/weights3/Adam_1/read:021train/layer_3/weights3/Adam_1/Initializer/zeros:0

train/layer_3/biases3/Adam:0!train/layer_3/biases3/Adam/Assign!train/layer_3/biases3/Adam/read:02.train/layer_3/biases3/Adam/Initializer/zeros:0

train/layer_3/biases3/Adam_1:0#train/layer_3/biases3/Adam_1/Assign#train/layer_3/biases3/Adam_1/read:020train/layer_3/biases3/Adam_1/Initializer/zeros:0

train/layer_4/weights4/Adam:0"train/layer_4/weights4/Adam/Assign"train/layer_4/weights4/Adam/read:02/train/layer_4/weights4/Adam/Initializer/zeros:0
 
train/layer_4/weights4/Adam_1:0$train/layer_4/weights4/Adam_1/Assign$train/layer_4/weights4/Adam_1/read:021train/layer_4/weights4/Adam_1/Initializer/zeros:0

train/layer_4/biases4/Adam:0!train/layer_4/biases4/Adam/Assign!train/layer_4/biases4/Adam/read:02.train/layer_4/biases4/Adam/Initializer/zeros:0

train/layer_4/biases4/Adam_1:0#train/layer_4/biases4/Adam_1/Assign#train/layer_4/biases4/Adam_1/read:020train/layer_4/biases4/Adam_1/Initializer/zeros:0

train/output/weights5/Adam:0!train/output/weights5/Adam/Assign!train/output/weights5/Adam/read:02.train/output/weights5/Adam/Initializer/zeros:0

train/output/weights5/Adam_1:0#train/output/weights5/Adam_1/Assign#train/output/weights5/Adam_1/read:020train/output/weights5/Adam_1/Initializer/zeros:0

train/output/biases5/Adam:0 train/output/biases5/Adam/Assign train/output/biases5/Adam/read:02-train/output/biases5/Adam/Initializer/zeros:0

train/output/biases5/Adam_1:0"train/output/biases5/Adam_1/Assign"train/output/biases5/Adam_1/read:02/train/output/biases5/Adam_1/Initializer/zeros:0"ř
trainable_variablesŕÝ
u
layer_1/weights1:0layer_1/weights1/Assignlayer_1/weights1/read:02-layer_1/weights1/Initializer/random_uniform:0
h
layer_1/biases1:0layer_1/biases1/Assignlayer_1/biases1/read:02#layer_1/biases1/Initializer/zeros:0
u
layer_2/weights2:0layer_2/weights2/Assignlayer_2/weights2/read:02-layer_2/weights2/Initializer/random_uniform:0
h
layer_2/biases2:0layer_2/biases2/Assignlayer_2/biases2/read:02#layer_2/biases2/Initializer/zeros:0
u
layer_3/weights3:0layer_3/weights3/Assignlayer_3/weights3/read:02-layer_3/weights3/Initializer/random_uniform:0
h
layer_3/biases3:0layer_3/biases3/Assignlayer_3/biases3/read:02#layer_3/biases3/Initializer/zeros:0
u
layer_4/weights4:0layer_4/weights4/Assignlayer_4/weights4/read:02-layer_4/weights4/Initializer/random_uniform:0
h
layer_4/biases4:0layer_4/biases4/Assignlayer_4/biases4/read:02#layer_4/biases4/Initializer/zeros:0
q
output/weights5:0output/weights5/Assignoutput/weights5/read:02,output/weights5/Initializer/random_uniform:0
d
output/biases5:0output/biases5/Assignoutput/biases5/read:02"output/biases5/Initializer/zeros:0"'
	summaries

logging/current_cost:0*
serving_default
3
input*
input/Placeholder:0˙˙˙˙˙˙˙˙˙/
earnings#
output/add:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict