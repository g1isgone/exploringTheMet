%Generate walk for 100 steps
numSteps = 20;
randWalk20 = zeros(numSteps,numSteps);
for i = 1: numSteps
    randWalk20(i,:) = galleryRandWalk(A, i, numSteps); 
end

%Frequency
walk20 = galleryRandWalk(A, 1, 20);

%%
nodeIds = (1:45)'; 
nodeFreq = zeros(45,1); 

for visited = 1:numel(walk20)
    nodeFreq(walk20(visited)) = nodeFreq(walk20(visited)) +1; 
end
%%
freqTbl = [nodeIds nodeFreq]; 

bar(freqTbl(:,1), freqTbl(:,2)) 