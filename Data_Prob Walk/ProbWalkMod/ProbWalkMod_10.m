ProbWalkMod10=cell(100,1);
w=1;
for m=1:100
    ProbMod10=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalkModified(popMat, 10, i);
        ProbMod10=[ProbMod10; PopGetPopwalk];
    end
    ProbWalkMod10{w,1}=ProbMod10;
    w=w+1;
end  

ProbFreqMod10=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalkMod10{t,1});
    ProbFreqMod10{t,1}=ProbFreq;
    t=t+1;
end

Prob10ModFreqSum=zeros(45,45);
for t=1:100
    Prob10ModFreqSum=Prob10ModFreqSum+ProbFreqMod10{t,1};
    t=t+1;
end
Prob10ModFreqAvg=Prob10ModFreqSum/100;

save ProbMod10Data ProbWalkMod10 ProbFreqMod10 Prob10ModFreqAvg
heatmap(Prob10ModFreqAvg)