function[matrix]=randomWalk(graph, numSteps)
matrix = [];
for i=1:45
    matrix20k=galleryRandWalk(graph, i, numSteps);
    matrix=[matrix; matrix20k];
end
end

