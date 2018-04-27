PopGetPopWalkIM40=cell(100,1);
w=1;
for m=1:100
    PopGetPopIM40=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopMod(popMat, 40, i);
        PopGetPopIM40=[PopGetPopIM40; PopGetPopwalk];
    end
    PopGetPopWalkIM40{w,1}=PopGetPopIM40;
    w=w+1;
end  

PopGetPopFreqIM40=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkIM40{t,1});
    PopGetPopFreqIM40{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopIM40FreqSum=zeros(45,45);
for t=1:100
    PopGetPopIM40FreqSum=PopGetPopIM40FreqSum+PopGetPopFreqIM40{t,1};
    t=t+1;
end
PopGetPopIM40FreqAvg=PopGetPopIM40FreqSum/100;

save PopGetPopIM40Data PopGetPopWalkIM40 PopGetPopFreqIM40 PopGetPopIM40FreqAvg
heatmap(PopGetPopIM40FreqAvg)