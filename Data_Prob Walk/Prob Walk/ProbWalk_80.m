ProbWalk80=cell(100,1);
w=1;
for m=1:100
    Prob80=[];
    for i=1:45
        PopGetPopwalk=galleryProbWalk(popMat, 80, i);
        Prob80=[Prob80; PopGetPopwalk];
    end
    ProbWalk80{w,1}=Prob80;
    w=w+1;
end  

ProbFreq80=cell(100,1);
t=1;
for m=1:100
    ProbFreq= pathToFreqMat(ProbWalk80{t,1});
    ProbFreq80{t,1}=ProbFreq;
    t=t+1;
end

Prob80FreqSum=zeros(45,45);
for t=1:100
    Prob80FreqSum=Prob80FreqSum+ProbFreq80{t,1};
    t=t+1;
end
Prob80FreqAvg=Prob80FreqSum/100;

save Prob8P0Data ProbWalk80 ProbFreq80 Prob80FreqAvg
heatmap(Prob80FreqAvg)