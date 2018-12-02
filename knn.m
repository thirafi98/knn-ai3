filehere = 'DataTrain_Tugas3_AI.csv';
filetest = 'DataTest_Tugas3_AI.csv';
dataT = xlsread(filehere);
dataTe = xlsread(filetest);
k = 9; %class * n + 1

dataLatih = dataT(:, 2:6);
dataTest = dataTe(:, 2:6);
dataLabel = dataT(:, 7);

resultTesting = trainClassify(dataTest, dataLatih, dataLabel, k);


newFileName = 'TebakanData.csv';
xlswrite(newFileName,resultTesting); 


