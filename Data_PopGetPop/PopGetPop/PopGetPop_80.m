PopGetPopWalk80=cell(100,1);
w=1;
for m=1:100
    PopGetPop80=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPop(popMat, 80, i);
        PopGetPop80=[PopGetPop80; PopGetPopwalk];
    end
    PopGetPopWalk80{w,1}=PopGetPop80;
    w=w+1;
end  

PopGetPopFreq80=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalk80{t,1});
    PopGetPopFreq80{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPop80FreqSum=zeros(45,45);
for t=1:100
    PopGetPop80FreqSum=PopGetPop80FreqSum+PopGetPopFreq80{t,1};
    t=t+1;
end
PopGetPop80FreqAvg=PopGetPop80FreqSum/100;

save PopGetPop80Data PopGetPopWalk80 PopGetPopFreq80 PopGetPop80FreqAvg
heatmap(PopGetPop80FreqAvg)

