ProbWalkMod20=cell(100,1);
w=1;
for m=1:100
    ProbMod20=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalkModified(popMat, 20, i);
        ProbMod20=[ProbMod20; PopGetPopwalk];
    end
    ProbWalkMod20{w,1}=ProbMod20;
    w=w+1;
end  

ProbFreqMod20=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalkMod20{t,1});
    ProbFreqMod20{t,1}=ProbFreq;
    t=t+1;
end

Prob20ModFreqSum=zeros(45,45);
for t=1:100
    Prob20ModFreqSum=Prob20ModFreqSum+ProbFreqMod20{t,1};
    t=t+1;
end
Prob20ModFreqAvg=Prob20ModFreqSum/100;

save ProbMod20Data ProbWalkMod20 ProbFreqMod20 Prob20ModFreqAvg
heatmap(Prob20ModFreqAvg)