ProbWalk40=cell(100,1);
w=1;
for m=1:100
    Prob40=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalk(popMat, 40, i);
        Prob40=[Prob40; PopGetPopwalk];
    end
    ProbWalk40{w,1}=Prob40;
    w=w+1;
end  

ProbFreq40=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalk40{t,1});
    ProbFreq40{t,1}=ProbFreq;
    t=t+1;
end

Prob40FreqSum=zeros(45,45);
for t=1:100
    Prob40FreqSum=Prob40FreqSum+ProbFreq40{t,1};
    t=t+1;
end
Prob40FreqAvg=Prob40FreqSum/100;

save Prob40Data ProbWalk40 ProbFreq40 Prob40FreqAvg
heatmap(Prob40FreqAvg)