function [visitedGalleries] = galleryRandWalk(graph, startDestination, numSteps)

    visitedGalleries = zeros(1,numSteps); 
    curr = startDestination;
    
    for step = 1:numsteps
        allNeighbors = graph(curr, :); 
        nbrCandidates = find(allNeighbors == 1); 
        
        chosenNode = randi(numel(nbrCandidates)); 
        curr = nbrCandidates(chosenNode);  
        visitedGalleries(step) = curr; 
        
    end 
    visitedGalleries = [startDestination visitedGalleries]; 

end