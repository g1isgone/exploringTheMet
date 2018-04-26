PopGetPopFreq5=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalk5{t,1});
    PopGetPopFreq5{t,1}=PopGetPopFreq;
    t=t+1;
end

