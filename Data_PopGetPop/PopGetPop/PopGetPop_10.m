PopGetPopWalk10=cell(100,1);
w=1;
for m=1:100
    PopGetPop10=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPop(popMat, 10, i);
        PopGetPop10=[PopGetPop10; PopGetPopwalk];
    end
    PopGetPopWalk10{w,1}=PopGetPop10;
    w=w+1;
end  

PopGetPopFreq10=cell(100,1);
t=1;
for m=1:100
    PopGetPopFreq= pathToFreqMat(PopGetPopWalk10{t,1});
    PopGetPopFreq10{t,1}=PopGetPopFreq;
    t=t+1;
end

PopGetPop10FreqSum=zeros(45,45);
for t=1:100
    PopGetPop10FreqSum=PopGetPop10FreqSum+PopGetPopFreq10{t,1};
    t=t+1;
end
PopGetPop10FreqAvg=PopGetPop10FreqSum/100;

save PopGetPop10Data PopGetPopWalk10 PopGetPopFreq10 PopGetPop10FreqAvg
heatmap(PopGetPop10FreqAvg)

