PopGetPopWalkMod40=cell(100,1);
w=1;
for m=1:100
    PopGetPopMod40=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopMod(popMat, 40, i);
        PopGetPopMod40=[PopGetPopMod40; PopGetPopwalk];
    end
    PopGetPopWalkMod40{w,1}=PopGetPopMod40;
    w=w+1;
end  

PopGetPopFreqMod40=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkMod40{t,1});
    PopGetPopFreqMod40{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopMod40FreqSum=zeros(45,45);
for t=1:100
    PopGetPopMod40FreqSum=PopGetPopMod40FreqSum+PopGetPopFreqMod40{t,1};
    t=t+1;
end
PopGetPopMod40FreqAvg=PopGetPopMod40FreqSum/100;

save PopGetPopMod40Data PopGetPopWalkMod40 PopGetPopFreqMod40 PopGetPopMod40FreqAvg
heatmap(PopGetPopMod40FreqAvg)