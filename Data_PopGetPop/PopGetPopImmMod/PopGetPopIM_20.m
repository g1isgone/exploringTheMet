PopGetPopWalkIM20=cell(100,1);
w=1;
for m=1:100
    PopGetPopIM20=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopImmMod(popMat, 20, i);
        PopGetPopIM20=[PopGetPopIM20; PopGetPopwalk];
    end
    PopGetPopWalkIM20{w,1}=PopGetPopIM20;
    w=w+1;
end  

PopGetPopFreqIM20=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkIM20{t,1});
    PopGetPopFreqIM20{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopIM20FreqSum=zeros(45,45);
for t=1:100
    PopGetPopIM20FreqSum=PopGetPopIM20FreqSum+PopGetPopFreqIM20{t,1};
    t=t+1;
end
PopGetPopIM20FreqAvg=PopGetPopIM20FreqSum/100;

save PopGetPopIM20Data PopGetPopWalkIM20 PopGetPopFreqIM20 PopGetPopIM20FreqAvg
heatmap(PopGetPopIM20FreqAvg)