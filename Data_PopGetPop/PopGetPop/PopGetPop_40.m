PopGetPopWalk40=cell(100,1);
w=1;
for m=1:100
    PopGetPop40=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPop(popMat, 40, i);
        PopGetPop40=[PopGetPop40; PopGetPopwalk];
    end
    PopGetPopWalk40{w,1}=PopGetPop40;
    w=w+1;
end  

PopGetPopFreq40=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalk40{t,1});
    PopGetPopFreq40{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPop40FreqSum=zeros(45,45);
for t=1:100
    PopGetPop40FreqSum=PopGetPop40FreqSum+PopGetPopFreq40{t,1};
    t=t+1;
end
PopGetPop40FreqAvg=PopGetPop40FreqSum/100;

save PopGetPop40Data PopGetPopWalk40 PopGetPopFreq40 PopGetPop40FreqAvg
heatmap(PopGetPop40FreqAvg)

