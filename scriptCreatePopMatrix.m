load("popInitData.mat");
repPop = repmat(popInit, size(popInit,2), 1); 
popMat = original.*repPop; 
