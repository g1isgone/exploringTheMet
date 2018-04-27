a1=[];
a2=[]; 
a3=[];
a4=[];
a5=[];
a6=[];

for i=1:45
    Randwalk=galleryRandWalk(original, i, 10);
    a1=[a1; Randwalk];
end  

for i=1:45
    Randwalk=galleryProbWalk(popMat, 10, i);
    a2=[a2; Randwalk];
end  

for i=1:45
    Randwalk=galleryPopGetPop(popMat, 10, i);
    a3=[a3; Randwalk];
end  

for i=1:45
    Randwalk=galleryProbWalkModified(popMat, 10, i);
    a4=[a4; Randwalk];
end 

for i=1:45
    Randwalk=galleryPopGetPopMod(popMat, 10, i);
    a5=[a5; Randwalk];
end  
 
for i=1:45
    Randwalk=galleryPopGetPopImmMod(popMat, 10, i);
    a6=[a6; Randwalk];
end 

%% 
a1 = pathToFreqMat(a1); 
a2 = pathToFreqMat(a2);
a3 = pathToFreqMat(a3);
a4 = pathToFreqMat(a4);
a5 = pathToFreqMat(a5);
a6 = pathToFreqMat(a6);
%%
figure; heatmap(a1); 

figure; heatmap(a2); 

figure; heatmap(a3);

figure; heatmap(a4);

figure; heatmap(a5);

figure; heatmap(a6);

%%
 a7 =[]; 
for i=1:45
    Randwalk=galleryPopGetPopImmMod(popMat, 80, i);
    a7=[a7; Randwalk];
end

a7 = pathToFreqMat(a7);

figure; heatmap(a7); 


%% 
a8 = [];
for i=1:45
    Randwalk=galleryRandWalkMod(original, i, 10);
    a8=[a8; Randwalk];
end  

a8 = pathToFreqMat(a8);

figure; heatmap(a8); 