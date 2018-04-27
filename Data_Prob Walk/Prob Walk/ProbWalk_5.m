ProbWalk5=cell(100,1);
w=1;
for m=1:100
    Prob5=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalk(popMat, 5, i);
        Prob5=[Prob5; PopGetPopwalk];
    end
    ProbWalk5{w,1}=Prob5;
    w=w+1;
end  

ProbFreq5=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalk5{t,1});
    ProbFreq5{t,1}=ProbFreq;
    t=t+1;
end

Prob5FreqSum=zeros(45,45);
for t=1:100
    Prob5FreqSum=Prob5FreqSum+ProbFreq5{t,1};
    t=t+1;
end
Prob5FreqAvg=Prob5FreqSum/100;

save Prob5Data ProbWalk5 ProbFreq5 Prob5FreqAvg
heatmap(Prob5FreqAvg)