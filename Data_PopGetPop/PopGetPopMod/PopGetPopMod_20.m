PopGetPopWalkMod20=cell(100,1);
w=1;
for m=1:100
    PopGetPopMod20=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopMod(popMat, 20, i);
        PopGetPopMod20=[PopGetPopMod20; PopGetPopwalk];
    end
    PopGetPopWalkMod20{w,1}=PopGetPopMod20;
    w=w+1;
end  

PopGetPopFreqMod20=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkMod20{t,1});
    PopGetPopFreqMod20{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopMod20FreqSum=zeros(45,45);
for t=1:100
    PopGetPopMod20FreqSum=PopGetPopMod20FreqSum+PopGetPopFreqMod20{t,1};
    t=t+1;
end
PopGetPopMod20FreqAvg=PopGetPopMod20FreqSum/100;

save PopGetPopMod20Data PopGetPopWalkMod20 PopGetPopFreqMod20 PopGetPopMod20FreqAvg
heatmap(PopGetPopMod20FreqAvg)