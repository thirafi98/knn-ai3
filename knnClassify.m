function label = knnClassify(dataTest, dataLatih, labels, k)
	labelOutput = [0 ; 1 ; 2; 3];

	[rows, cols] = size(dataLatih);
	diffMat = zeros(rows,cols);
    for i = 1:rows
        for j = 1:cols
            diffMat(i,j) = (dataLatih(i,j)-dataTest(1,j))^2;
        end
    end
    dist = sqrt(sum(diffMat,2));  

    [~,index] = sort(dist); 

    for i=1:k
        klabels(i) = labels(index(i)); 
    end

    sortedClass = tabulate(klabels'); 
    [~,i] = max(sortedClass(:,2));  
    label = labelOutput(i); 

   
end
