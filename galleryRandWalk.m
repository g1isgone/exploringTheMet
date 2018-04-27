%Given a specific location and number of steps, generate a random walk such
%that no nodes are weighted - each nbr node has equal probability to be visited
function [visitedGalleries] = galleryRandWalk(graph, startLocation, numSteps)

    visitedGalleries = zeros(1,numSteps); %initializes a list to store all the galleries that have been visited
    curr = startLocation; %the current location we are on
    
    for step = 1:numSteps
        allNeighbors = graph(curr, :); %extract all 45 nodes in relation to curr node
        nbrCandidates = find(allNeighbors == 1); %find the neighbors of the currNode
        
        %choose a neighbor such that each neighbor has an equivalent
        %probability of being chosen
        chosenNode = randi(numel(nbrCandidates)); %choose a random element 
        curr = nbrCandidates(chosenNode); %make curr the random nbr we chose
        visitedGalleries(step) = curr; %mark curr gallery as visited
        
    end 
    %includes the startLocation as the first node of the visited galleries
    visitedGalleries = [startLocation visitedGalleries]; 
end

