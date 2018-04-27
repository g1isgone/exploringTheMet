%% Original Visualizations
popNbrsOrig = heatmap(popMat); 
title(popNbrsOrig, 'Most Popular Paintings in Neighboring Galleries');
popNbrsOrig.XLabel = 'Neighboring Galleries'; 
popNbrsOrig.YLabel = 'Galleries'; 
 
%% Distribution By Gallery
figure; popDistOrig = bar(1:45, popInit);
xlabel('Galleries'); 
ylabel('Popularity'); 
title('Popularity of Galleries Determined by Google Searches');  


%% BoxPlot
figure; popBoxPlot = boxplot(popInit, 'orientation', 'horizontal'); 
xlabel('Popularity'); 
ylabel('Box Plot'); 
title('Distribution of Popularity of Galleries'); 


%% Histogram
figure;  hist(popInit); 
title('Histogram of Popularity of Galleries'); 
xlabel('Popularity'); 
ylabel('Frequency'); 

%% Degree Distribution
degreeDist = sum(original,2); 
figure;  histogram(degreeDist);
title('Histogram of Degree of Each Galleries'); 
xlabel('Degree'); 
ylabel('Frequency');

%% Degree by Galleries 
figure; bar(degreeDist);
xlabel('Galleries'); 
ylabel('Degree'); 
title('Degree of Galleries');

%% Modified Visualizations 
popMod = popMat(4:45,:); 

%% Original Visualizations
yvalues = 4:45; 
xvalues = 1:45;
popNbrsOrig = heatmap(xvalues, yvalues, popMod); 

title(popNbrsOrig, 'Most Popular Paintings in Neighboring Galleries');
popNbrsOrig.XLabel = 'Neighboring Galleries'; 
popNbrsOrig.YLabel = 'Galleries'; 
 
 
%% Distribution By Gallery
figure; popDistOrig = bar(popInit(4:45));
xlabel('Galleries'); 
ylabel('Popularity'); 
title('Popularity of Galleries Determined by Google Searches');  

%% BoxPlot
figure; popBoxPlot = boxplot(popInit(4:45), 'orientation', 'horizontal'); 
xlabel('Popularity'); 
ylabel('Box Plot'); 
title('Distribution of Popularity of Galleries'); 


%% Histogram
figure;  hist(popInit(4:45)); 
title('Histogram of Popularity of Galleries'); 
xlabel('Popularity'); 
ylabel('Frequency'); 


%% Graph Visulaization 
G = graph(original); 
plot(G); 
%%
popNbrsOrig = heatmap(original); 
title(popNbrsOrig, 'Connectivity');
popNbrsOrig.XLabel = 'Neighboring Galleries'; 
popNbrsOrig.YLabel = 'Galleries'; 
 
