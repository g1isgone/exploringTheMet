PopGetPopWalkMod5=cell(100,1);
w=1;
for m=1:100
    PopGetPopMod5=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopMod(popMat, 5, i);
        PopGetPopMod5=[PopGetPopMod5; PopGetPopwalk];
    end
    PopGetPopWalkMod5{w,1}=PopGetPopMod5;
    w=w+1;
end  

PopGetPopFreqMod5=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkMod5{t,1});
    PopGetPopFreqMod5{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopMod5FreqSum=zeros(45,45);
for t=1:100
    PopGetPopMod5FreqSum=PopGetPopMod5FreqSum+PopGetPopFreqMod5{t,1};
    t=t+1;
end
PopGetPopMod5FreqAvg=PopGetPopMod5FreqSum/100;

save PopGetPopMod5Data PopGetPopWalkMod5 PopGetPopFreqMod5 PopGetPopMod5FreqAvg
heatmap(PopGetPopMod5FreqAvg)