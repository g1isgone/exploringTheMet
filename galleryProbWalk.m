%Given the popularity of each node, the number of steps, and the start
%location --> Figure out the path the viewer will most likely go to
%depending on the popularity of the painting. It will also return the
%probability to go from one gallery to another. 
function [visitedGalleries, visitedProb] = galleryProbWalk(popGraph, numSteps, startLocation)
    visitedGalleries = zeros(1, numSteps); %initialization of data structure that denotes which galleries you have been to
    visitedProb = zeros(1, numSteps); %initialization of data structure that denotes the probability to go from one gallery to another
    
    curr = startLocation; %the current location we are on 
    cumProb = 1; %the cumulative probability
     
    for step = 1:numSteps %for each number of steps
        popAllNeighbors = popGraph(curr,:); %extract all the popularity from that node
        nbrs = find(popAllNeighbors <0 ); %find the nbr nodes' ids
        popNbrs = popAllNeighbors(nbrs); %extract the popularity of all the nbrs
        
        totalPop = sum(popNbrs); %the sum of all the popularity of the neighbors
        randPop = randi(totalPop); %chooses a random popularity between 1 - totalPop
        
        nbrIndex = 1; %nbrIndex of nbrs - not the actual nbr node id  
        
        %find the node that with the range that includes randPop
        while(randPop > 0 )  %as long as randPop is greater than 0 
            randPop = randPop-popNbrs(nbrIndex); %subtract population range of a nbr 
            nbrIndex = nbrIndex+1;  %update nbrIndex
        end 
        
        nbrIndex = nbrIndex-1;  %the actual nbrIndex that points to the nbr we needs to traverse to
        curr = nbrs(nbrIndex); %node id of the nbr we want to traverse to
        visitedGalleries(step) = curr; %store the nbr we are traversing to 
        
        
        %calculating probability to go to that gallery 
        nbrProb = popNbrs/totalPop; %the probability of all the nbrs 
        cumProb = cumProb*nbrProb(curr); %the cumulative probability to go from the previous path of galleries to this new gallery
        visitedProb(step) = cumProb; %store this cumulative probability 
   
    end 
    visitedGalleries = [startLocation visitedGalleries]; %store the list of visitedGalleries
    visitedProb = [1 visitedProb]; %store the cumulative probability to go from one gallery to the next  
end