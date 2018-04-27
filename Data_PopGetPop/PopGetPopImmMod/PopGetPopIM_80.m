PopGetPopWalkIM80=cell(100,1);
w=1;
for m=1:100
    PopGetPopIM80=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPopMod(popMat, 80, i);
        PopGetPopIM80=[PopGetPopIM80; PopGetPopwalk];
    end
    PopGetPopWalkIM80{w,1}=PopGetPopIM80;
    w=w+1;
end  

PopGetPopFreqIM80=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalkIM80{t,1});
    PopGetPopFreqIM80{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPopIM80FreqSum=zeros(45,45);
for t=1:100
    PopGetPopIM80FreqSum=PopGetPopIM80FreqSum+PopGetPopFreqIM80{t,1};
    t=t+1;
end
PopGetPopIM80FreqAvg=PopGetPopIM80FreqSum/100;

save PopGetPopIM80Data PopGetPopWalkIM80 PopGetPopFreqIM80 PopGetPopIM80FreqAvg
heatmap(PopGetPopIM80FreqAvg)
