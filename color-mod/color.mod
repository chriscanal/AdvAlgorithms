param numColors;

param numNodes;

set edgeList;


var Nodes {i in 0..numNodes-1} integer, >= 0, <= numColors-1;
var Conflicts {i in 0..numNodes-1, j in 0..numNodes-1} binary;
param edge {i in 0..numNodes-1, j in 0..numNodes-1} := (if (i,j) in edgeList or (j,i) in edgeList then 1 else 0);

minimize Total_Conflicts: sum {i in 0..numNodes-1, j in 0..numNodes-1} Conflicts[i,j];
subject to Color {i in 0..numNodes-1, j in 0..numNodes-1}: Conflicts[i,j] = (if i > j and Nodes[i] = Nodes[j] and edge[i,j] = 1 then 1 else 0); 
