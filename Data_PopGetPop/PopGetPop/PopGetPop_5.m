PopGetPopWalk5=cell(100,1);
w=1;
for m=1:100
    PopGetPop5=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPop(popMat, 5, i);
        PopGetPop5=[PopGetPop5; PopGetPopwalk];
    end
    PopGetPopWalk5{w,1}=PopGetPop5;
    w=w+1;
end  

PopGetPopFreq5=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalk5{t,1});
    PopGetPopFreq5{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPop5FreqSum=zeros(45,45);
for t=1:100
    PopGetPop5FreqSum=PopGetPop5FreqSum+PopGetPopFreq5{t,1};
    t=t+1;
end
PopGetPop5FreqAvg=PopGetPop5FreqSum/100;

save PopGetPop5Data PopGetPopWalk5 PopGetPopFreq5 PopGetPop5FreqAvg
heatmap(PopGetPop5FreqAvg)

