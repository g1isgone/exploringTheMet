PopGetPopWalk5=cell(100,1);
w=1;
for m=1:100
    PopGetPop5=[];
    for i=1:45
        PopGetPopwalk=galleryPopGetPop(popMat, 5, i);
        PopGetPop5=[PopGetPop5; PopGetPopwalk];
    end
    PopGetPopWalk5{w,1}=PopGetPop5;
    w=w+1;
end  
