function[matrix]=randomWalk(graph,)
matrix = [];
for i=1:45
    matrix20k=galleryRandWalk(A, i, 20);
    matrix=[matrix; matrix20k];
end

