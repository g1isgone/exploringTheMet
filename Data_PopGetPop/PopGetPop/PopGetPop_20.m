PopGetPopWalk20=cell(100,1);
w=1;
for m=1:100
    PopGetPop20=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPop(popMat, 20, i);
        PopGetPop20=[PopGetPop20; PopGetPopwalk];
    end
    PopGetPopWalk20{w,1}=PopGetPop20;
    w=w+1;
end  

PopGetPopFreq20=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalk20{t,1});
    PopGetPopFreq20{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPop20FreqSum=zeros(45,45);
for t=1:100
    PopGetPop20FreqSum=PopGetPop20FreqSum+PopGetPopFreq20{t,1};
    t=t+1;
end
PopGetPop20FreqAvg=PopGetPop20FreqSum/100;

save PopGetPop20Data PopGetPopWalk20 PopGetPopFreq20 PopGetPop20FreqAvg
heatmap(PopGetPop20FreqAvg)




