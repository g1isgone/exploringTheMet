ProbWalkMod40=cell(100,1);
w=1;
for m=1:100
    ProbMod40=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalkModified(popMat, 40, i);
        ProbMod40=[ProbMod40; PopGetPopwalk];
    end
    ProbWalkMod40{w,1}=ProbMod40;
    w=w+1;
end  

ProbFreqMod40=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalkMod40{t,1});
    ProbFreqMod40{t,1}=ProbFreq;
    t=t+1;
end

Prob40ModFreqSum=zeros(45,45);
for t=1:100
    Prob40ModFreqSum=Prob40ModFreqSum+ProbFreqMod40{t,1};
    t=t+1;
end
Prob40ModFreqAvg=Prob40ModFreqSum/100;

save ProbMod40Data ProbWalkMod40 ProbFreqMod40 Prob40ModFreqAvg
heatmap(Prob40ModFreqAvg)