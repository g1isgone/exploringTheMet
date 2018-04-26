function [visitedGalleries, visitedProb] = galleryPopGetPopImmMod(popGraph, numSteps, startLocation)
    visitedGalleries = zeros(1, numSteps); %initialization of data structure that denotes which galleries you have been to
    visitedProb = zeros(1, numSteps); %initialization of data structure that denotes the probability to go from one gallery to another
    
    curr = startLocation; %the current location we are on 
    cumProb = 1; %the cumulative probability
    
    for stepI = 1:numSteps 
        popAllNeighbors = popGraph(curr,:); %extract all the popularity from that node
        nbrs = find(popAllNeighbors > 0 ); %find the nbr nodes' ids
        popNbrs = popAllNeighbors(nbrs); %extract the popularity of all the nbrs
   
        %check if there have been repeats and keep a note of those nodes 
        for node_i = 1:numel(nbrs) 
            if(any(visitedGalleries == nbrs(node_i)))
                popNbrs(node_i) = 346; 
                fprintf("visited\n"); 
            end 
          
        end 
        
        popNbrNbrs = popGraph(nbrs, :); %extract the popularity for the nbrs' neighbors
        
   
        
        localPop = sum(popNbrNbrs, 2)' + popNbrs; %the local popularity for a neighbor (includes nbr + its nbrs popularity)
        
        totalPop = sum(localPop); %the sum of all the popularity of the localPopularity
        randPop = randi(totalPop); %chooses a random popularity between 1 - totalPop
        
        nbrIndex = 1; %nbrIndex of nbrs - not the actual nbr node id  
        
        %find the node that with the range that includes randPop
        while(randPop > 0 )  %as long as randPop is greater than 0 
            randPop = randPop-localPop(nbrIndex); %subtract population range of a nbr 
            nbrIndex = nbrIndex+1;  %update nbrIndex
        end 
        
        nbrIndex = nbrIndex-1;  %the actual nbrIndex that points to the nbr we needs to traverse to
        curr = nbrs(nbrIndex); %node id of the nbr we want to traverse to
        visitedGalleries(stepI) = curr; %store the nbr we are traversing to 
        
        
        %calculating probability to go to that nbr based on the local prob
        localProb = localPop/totalPop; %the local probability of all the nbrs
        cumProb = cumProb*localProb(nbrIndex); %the cumulative probability to go from the previous path of galleries to this new gallery
        visitedProb(stepI) = cumProb; %store this cumulative probability 

    end
    visitedGalleries = [startLocation visitedGalleries];
    visitedProb = [1 visitedProb];  
end