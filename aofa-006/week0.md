# Lecture 0: From AofA to AC
### Brief History
- 1860 Babbage
- 1940 Turing
- 1960 Knuth

### Analysis of Algorithms

####Num different binary tree structures (TN)
#####1. Recurrence relation
- T0 = `1` = `dtn0` = `1`
- T1 = `1` = `T0*T0 + dtn0` = `1 + 0`
- T2 = `2` = `T0*T1 + T1*T0 + dtn0` = `1*1 + 1*1 + 0`
- T3 = `5` = `T0*T2 + T1*T1 + T2*T0 + dtn0` = `1*2 + 1*1 + 2*1 + 0`
- T4 = `14` = `T0*T3 + T1*T2 + T2*T1 + T3*T0 + dtn0` = `1*5 + 1*2 + 2*1 + 5*1 + 0`

#####2. GF = generating function

#####3. Extract coefficients
- `T(z) = 1 + zT(z)^2`

###### Quadradic Formula
- `z(T(z)^2) - T(z) + 1 = 0`
- `a(z) b(-1) c(1)` 
- `T(z) = (-(-1) +- ((-1)^2 - 4(z)(1))^0.5)/(2(z))`
- `T(z) = (1 +- (1 - 4z)^0.5)/(2z)`
- `z*T(z) = (1/2)*(1 +- (1 - 4z)^0.5)` ("Has to be minus for n=0")

###### Binomial theorem



# Lecture 1: Analysis of Algorithms
