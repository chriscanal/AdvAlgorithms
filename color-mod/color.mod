param numColors;
param numNodes;
set edgeList;

var Nodes {i in 0.. numNodes-1} integer, >= 0, <= numColors;
var Conflicts {i in 0.. card(edgeList)} binary;

minimize Total_Conflicts: sum {i in 0.. card(edgeList)} Conflicts[i];

