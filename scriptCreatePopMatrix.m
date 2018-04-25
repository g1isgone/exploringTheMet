load("popInitData.mat");
load("InitMatrix.mat"); 
repPop = repmat(popInit, size(popInit,2), 1); 
popMat = original.*repPop; 

save popMatrix popMat