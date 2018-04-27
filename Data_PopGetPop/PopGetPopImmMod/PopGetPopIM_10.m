PopGetPopWalkIM10=cell(100,1);
w=1;
for m=1:100
    PopGetPopIM10=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopImmMod(popMat, 10, i);
        PopGetPopIM10=[PopGetPopIM10; PopGetPopwalk];
    end
    PopGetPopWalkIM10{w,1}=PopGetPopIM10;
    w=w+1;
end  

PopGetPopFreqIM10=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkIM10{t,1});
    PopGetPopFreqIM10{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopIM10FreqSum=zeros(45,45);
for t=1:100
    PopGetPopIM10FreqSum=PopGetPopIM10FreqSum+PopGetPopFreqIM10{t,1};
    t=t+1;
end
PopGetPopIM10FreqAvg=PopGetPopIM10FreqSum/100;

save PopGetPopIM10Data PopGetPopWalkIM10 PopGetPopFreqIM10 PopGetPopIM10FreqAvg
heatmap(PopGetPopIM10FreqAvg)