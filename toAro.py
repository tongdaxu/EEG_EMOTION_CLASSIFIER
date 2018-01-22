import linecache

# Code for val

eegWritter = open('C:\Git\EEGTEMP\BandPower_Aro_Train_1-32-266.csv', 'a')
eegTester = open('C:\Git\EEGTEMP\BandPower_Aro_Test_1-32-256.csv', 'a')

def Valcal (i,k,m):
    templine = linecache.getline('C:\Git\EEGTEMP\BandPower_Participant_' + str(i) + '.txt', k)
    templine = templine[1:len(templine) - 2]
    templine = templine.split(",")
    return templine[m]

eegWritter.write('Arosual,FC2BETA,CZALPHA,CP6THETA'+'\n')
eegTester.write('Arosual,FC2BETA,CZALPHA,CP6THETA'+'\n')

for i in range (1,33):
    for k in range (1,491385):
        if (k%256 > 7.5) and  (k%256 < 15.5):
            try:
                if k % 8 == 2:
                    # Arovalue
                    eegWritter.write(Valcal (i,k,3))
                    eegWritter.write(',')
                    # FC2 Beta
                    eegWritter.write(Valcal (i,k,7))
                    eegWritter.write(',')
                if k % 8 == 4:
                    # CZ Alpha
                    eegWritter.write(Valcal(i, k, 6))
                    eegWritter.write(',')
                if (k % 8 == 0) and (k > 0):
                    # CP6 Theta
                    eegWritter.write(Valcal(i, k, 5))
                    eegWritter.write('\n')
            except IndexError:
                print('iderrortrain')
        if k%256 < 7.5:
            try:
                if k % 8 == 2:
                    # Arovalue
                    eegTester.write(Valcal (i,k,3))
                    eegTester.write(',')
                    # FC2 Beta
                    eegTester.write(Valcal (i,k,7))
                    eegTester.write(',')
                if k % 8 == 4:
                    # CZ Alpha
                    eegTester.write(Valcal(i, k, 6))
                    eegTester.write(',')
                if (k % 8 == 0) and (k > 0):
                    # CP6 Theta
                    eegTester.write(Valcal(i, k, 5))
                    eegTester.write('\n')
            except IndexError:
                 print ('iderrortest')
    print (str(i)+' completed')




