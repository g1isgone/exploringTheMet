function[frequencyMatrix] = pathToFreqMat(popMat)
    paths = popMat(:,2:end); 
    frequencyMatrix = zeros(45); 
    
    for i = 1:45
        for j = 1:45
            frequencyMatrix(i,j) = numel(find(paths(i,:) == j)); 
        end
    end
end
