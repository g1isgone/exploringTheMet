ProbWalk20=cell(100,1);
w=1;
for m=1:100
    Prob20=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalk(popMat, 20, i);
        Prob20=[Prob20; PopGetPopwalk];
    end
    ProbWalk20{w,1}=Prob20;
    w=w+1;
end  

ProbFreq20=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalk20{t,1});
    ProbFreq20{t,1}=ProbFreq;
    t=t+1;
end

Prob20FreqSum=zeros(45,45);
for t=1:100
    Prob20FreqSum=Prob20FreqSum+ProbFreq20{t,1};
    t=t+1;
end
Prob20FreqAvg=Prob20FreqSum/100;

save Prob20Data ProbWalk20 ProbFreq20 Prob20FreqAvg
heatmap(Prob20FreqAvg)