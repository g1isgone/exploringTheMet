PopGetPopWalkMod80=cell(100,1);
w=1;
for m=1:100
    PopGetPopMod80=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopMod(popMat, 80, i);
        PopGetPopMod80=[PopGetPopMod80; PopGetPopwalk];
    end
    PopGetPopWalkMod80{w,1}=PopGetPopMod80;
    w=w+1;
end  

PopGetPopFreqMod80=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkMod80{t,1});
    PopGetPopFreqMod80{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopMod80FreqSum=zeros(45,45);
for t=1:100
    PopGetPopMod80FreqSum=PopGetPopMod80FreqSum+PopGetPopFreqMod80{t,1};
    t=t+1;
end
PopGetPopMod80FreqAvg=PopGetPopMod80FreqSum/100;

save PopGetPopMod80Data PopGetPopWalkMod80 PopGetPopFreqMod80 PopGetPopMod80FreqAvg
heatmap(PopGetPopMod80FreqAvg)