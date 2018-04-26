function edgeList = convertToEdgeList(adjMatrix) 
numEdges = sum(adjMatrix(:)); 
edgeList = zeros(numEdges,2); 
edgeIndex = 1; 
for i = 1:size(adjMatrix,1) 
    row = find(adjMatrix(i, :) > 0); 
    for j = 1:numel(row) 
        edgeList(edgeIndex, 1) = i; 
        edgeList(edgeIndex, 2) = row(j); 
        edgeIndex = edgeIndex+1; 
    end
end
end