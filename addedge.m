function[A]=addedge(A,V1,V2)
    A(V1,V2) = 1;
    A(V2,V1) =1;
end