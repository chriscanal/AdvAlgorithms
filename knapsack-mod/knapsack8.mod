param n;
param costBound;
param cost {i in 0.. n-1};
param value {i in 0.. n-1};

var X {i in 0.. n-1} binary;

maximize Total_Value: sum {i in 0.. n-1} value[i] * X[i];
subject to Cost_Limit: sum {i in 0.. n-1} cost[i] * X[i] <= costBound;
