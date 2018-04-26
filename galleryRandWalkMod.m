%Given a specific location and number of steps, generate a random walk such
%that no nodes are weighted - each nbr node has equal probability to be visited
function [visitedGalleries] = galleryRandWalkMod(graph, startLocation, numSteps)

    visitedGalleries = zeros(1,numSteps); %initializes a list to store all the galleries that have been visited
    curr = startLocation; %the current location we are on
    
    for stepI = 1:numSteps
        allNeighbors = graph(curr, :); %extract all 45 nodes in relation to curr node
        nbrCandidates = find(allNeighbors == 1); %find the neighbors of the currNode
        popNbrs = ones(1,numel(nbrCandidates))*5; 
        
        %check if there have been repeats and keep a note of those nodes 
        for node_i = 1:numel(nbrCandidates) 
            if(any(visitedGalleries == nbrCandidates(node_i)))
                popNbrs(node_i) = 1;
                fprintf("visited\n"); 
            end 
        end 
          
        totalPop = sum(popNbrs); %the sum of all the popularity of the localPopularity
        randPop = randi(totalPop); %chooses a random popularity between 1 - totalPop
        
        nbrIndex = 1; %nbrIndex of nbrs - not the actual nbr node id  
        
        %find the node that with the range that includes randPop
        while(randPop > 0 )  %as long as randPop is greater than 0 
            randPop = randPop-popNbrs(nbrIndex); %subtract population range of a nbr 
            nbrIndex = nbrIndex+1;  %update nbrIndex
        end 
        
        nbrIndex = nbrIndex-1;  %the actual nbrIndex that points to the nbr we needs to traverse to
        curr = nbrCandidates(nbrIndex); %node id of the nbr we want to traverse to
        visitedGalleries(stepI) = curr; %store the nbr we are traversing to 
        
    end 
    %includes the startLocation as the first node of the visited galleries
    visitedGalleries = [startLocation visitedGalleries]; 
end