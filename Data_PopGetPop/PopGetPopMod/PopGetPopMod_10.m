PopGetPopWalkMod10=cell(100,1);
w=1;
for m=1:100
    PopGetPopMod10=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopMod(popMat, 10, i);
        PopGetPopMod10=[PopGetPopMod10; PopGetPopwalk];
    end
    PopGetPopWalkMod10{w,1}=PopGetPopMod10;
    w=w+1;
end  

PopGetPopFreqMod10=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkMod10{t,1});
    PopGetPopFreqMod10{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopMod10FreqSum=zeros(45,45);
for t=1:100
    PopGetPopMod10FreqSum=PopGetPopMod10FreqSum+PopGetPopFreqMod10{t,1};
    t=t+1;
end
PopGetPopMod10FreqAvg=PopGetPopMod10FreqSum/100;

save PopGetPopMod10Data PopGetPopWalkMod10 PopGetPopFreqMod10 PopGetPopMod10FreqAvg
heatmap(PopGetPopMod10FreqAvg)