ProbWalkMod5=cell(100,1);
w=1;
for m=1:100
    ProbMod5=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalkModified(popMat, 5, i);
        ProbMod5=[ProbMod5; PopGetPopwalk];
    end
    ProbWalkMod5{w,1}=ProbMod5;
    w=w+1;
end  

ProbFreqMod5=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalkMod5{t,1});
    ProbFreqMod5{t,1}=ProbFreq;
    t=t+1;
end

Prob5ModFreqSum=zeros(45,45);
for t=1:100
    Prob5ModFreqSum=Prob5ModFreqSum+ProbFreqMod5{t,1};
    t=t+1;
end
Prob5ModFreqAvg=Prob5ModFreqSum/100;

save ProbMod5Data ProbWalkMod5 ProbFreqMod5 Prob5ModFreqAvg
heatmap(Prob5ModFreqAvg)