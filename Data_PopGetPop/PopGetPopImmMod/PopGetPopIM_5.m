PopGetPopWalkIM5=cell(100,1);
w=1;
for m=1:100
    PopGetPopIM5=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopImmMod(popMat, 5, i);
        PopGetPopIM5=[PopGetPopIM5; PopGetPopwalk];
    end
    PopGetPopWalkIM5{w,1}=PopGetPopIM5;
    w=w+1;
end  

PopGetPopFreqIM5=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkIM5{t,1});
    PopGetPopFreqIM5{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopIM5FreqSum=zeros(45,45);
for t=1:100
    PopGetPopIM5FreqSum=PopGetPopIM5FreqSum+PopGetPopFreqIM5{t,1};
    t=t+1;
end
PopGetPopIM5FreqAvg=PopGetPopIM5FreqSum/100;

save PopGetPopIM5Data PopGetPopWalkIM5 PopGetPopFreqIM5 PopGetPopIM5FreqAvg
heatmap(PopGetPopIM5FreqAvg)