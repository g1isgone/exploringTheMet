Randwalk50=[];
RandwalkProb50 = [];
for i=1:45
    [Randwalk, RandwalkProb] =galleryPopGetPop(popMat, 5, i);
    Randwalk50=[Randwalk50; Randwalk];
    RandwalkProb50 = [RandwalkProb50; RandwalkProb]; 
end

