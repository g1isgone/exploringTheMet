function [sumPopularity]  = popBySteps(popInit, matrix) 
    sumPopularity = 0; 
    for i = 1:45
        row = matrix(i,:);
        nbrs = find( row == 1); 
        nbrReps = find(row >1); 
    
        sumPopularity = sumPopularity + sum(popInit(nbrs)) +sum(nbrReps)*346 ; 
    end 
    
end