function resultTrain = trainClassify(dataTest, dataLatih, labels, k)
	[row,~] = size(dataTest);
	resultTrain = zeros([row,1]);
	for i=1:row
		resultTrain(i) = knnClassify(dataTest(i,:), dataLatih, labels, k);
	end
end