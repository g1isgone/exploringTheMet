ProbWalkMod80=cell(100,1);
w=1;
for m=1:100
    ProbMod80=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalkModified(popMat, 80, i);
        ProbMod80=[ProbMod80; PopGetPopwalk];
    end
    ProbWalkMod80{w,1}=ProbMod80;
    w=w+1;
end  

ProbFreqMod80=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalkMod80{t,1});
    ProbFreqMod80{t,1}=ProbFreq;
    t=t+1;
end

Prob80ModFreqSum=zeros(45,45);
for t=1:100
    Prob80ModFreqSum=Prob80ModFreqSum+ProbFreqMod80{t,1};
    t=t+1;
end
Prob80ModFreqAvg=Prob80ModFreqSum/100;

save ProbMod80Data ProbWalkMod80 ProbFreqMod80 Prob80ModFreqAvg
heatmap(Prob80ModFreqAvg)