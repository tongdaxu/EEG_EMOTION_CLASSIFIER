import linecache

# Code for val

eegWritter = open('C:\Git\EEGTEMP\BandPower_Val_Train_1-32-266.csv', 'a')
eegTester = open('C:\Git\EEGTEMP\BandPower_Val_Test_1-32-256.csv', 'a')

def Valcal (i,k,m):
    templine = linecache.getline('C:\Git\EEGTEMP\BandPower_Participant_' + str(i) + '.txt', k)
    templine = templine[1:len(templine) - 2]
    templine = templine.split(",")
    return templine[m]

eegWritter.write('Valence,FC6GAMMA,CZBETA,PO4THETA,PO4ALPHA,OZTHETA,OZBETA,CP6GAMMA'+'\n')
eegTester.write('Valence,FC6GAMMA,CZBETA,PO4THETA,PO4ALPHA,OZTHETA,OZBETA,CP6GAMMA'+'\n')

for i in range (1,33):
    for k in range (1,491385):
        if (k%256 > 7.5) and  (k%256 < 15.5):
            try:
                if k % 8 == 3:
                    # Valvalue
                    eegWritter.write(Valcal (i,k,2))
                    eegWritter.write(',')
                    # FC6 Gamma
                    eegWritter.write(Valcal (i,k,8))
                    eegWritter.write(',')
                if k % 8 == 4:
                    # CZ Beta
                    eegWritter.write(Valcal(i, k, 7))
                    eegWritter.write(',')
                if k % 8 == 6:
                    # PO4 Theta Alpha
                    eegWritter.write(Valcal(i, k, 5))
                    eegWritter.write(',')
                    eegWritter.write(Valcal(i, k, 6))
                    eegWritter.write(',')
                if k % 8 == 7:
                    # OZ Theta Beta
                    eegWritter.write(Valcal(i, k, 5))
                    eegWritter.write(',')
                    eegWritter.write(Valcal(i, k, 7))
                    eegWritter.write(',')
                if (k % 8 == 0) and (k > 0):
                    # CP^ Gamma
                    eegWritter.write(Valcal(i, k, 8))
                    eegWritter.write('\n')
            except IndexError:
                print('iderrortrain')
        if k%256 < 7.5:
            try:
                if k % 8 == 3:
                    # Valvalue
                    eegTester.write(Valcal (i,k,2))
                    eegTester.write(',')
                    # FC6 Gamma
                    eegTester.write(Valcal (i,k,8))
                    eegTester.write(',')
                if k % 8 == 4:
                    # CZ Beta
                    eegTester.write(Valcal(i, k, 7))
                    eegTester.write(',')
                if k % 8 == 6:
                    # PO4 Theta Alpha
                    eegTester.write(Valcal(i, k, 5))
                    eegTester.write(',')
                    eegTester.write(Valcal(i, k, 6))
                    eegTester.write(',')
                if k % 8 == 7:
                    # OZ Theta Beta
                    eegTester.write(Valcal(i, k, 5))
                    eegTester.write(',')
                    eegTester.write(Valcal(i, k, 7))
                    eegTester.write(',')
                if k % 8 == 0:
                    # CP^ Gamma
                    eegTester.write(Valcal(i, k, 8))
                    eegTester.write('\n')
            except IndexError:
                 print ('iderrortest')
    print (str(i)+' completed')




