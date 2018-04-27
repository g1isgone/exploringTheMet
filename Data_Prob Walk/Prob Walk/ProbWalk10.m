ProbWalk10=cell(100,1);
w=1;
for m=1:100
    Prob10=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalk(popMat, 10, i);
        Prob10=[Prob10; PopGetPopwalk];
    end
    ProbWalk10{w,1}=Prob10;
    w=w+1;
end  

ProbFreq10=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalk10{t,1});
    ProbFreq10{t,1}=ProbFreq;
    t=t+1;
end

Prob10FreqSum=zeros(45,45);
for t=1:100
    Prob10FreqSum=Prob10FreqSum+ProbFreq10{t,1};
    t=t+1;
end
Prob10FreqAvg=Prob10FreqSum/100;

save Prob10Data ProbWalk10 ProbFreq10 Prob10FreqAvg
heatmap(Prob10FreqAvg)