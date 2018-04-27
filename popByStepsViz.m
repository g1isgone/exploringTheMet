popSum5 = popBySteps(popInit, pathToFreqMat(s1)); 
popSum10 = popBySteps(popInit, pathToFreqMat(s2)); 
popSum20 = popBySteps(popInit, pathToFreqMat(s3)); 
popSum40 = popBySteps(popInit, pathToFreqMat(s4)); 
popSum80 = popBySteps(popInit, pathToFreqMat(s5)); 
 
 plot([5, 10, 20, 40, 80], [popSum5, popSum10, popSum20, popSum40, popSum80]); 
 