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

###### Quadradic Formula (Division priorities might be fucked, but result ok)
- `z(T(z)^2) - T(z) + 1 = 0`
- `a(z) b(-1) c(1)` 
- `T(z) = (-(-1) +- ((-1)^2 - 4(z)(1))^0.5)/(2(z))`
- `T(z) = (1 +- (1 - 4z)^0.5)/(2z)`
- `z*T(z) = (1/2)*(1 +- (1 - 4z)^0.5)` ("Has to be minus for n=0")

###### Generalized binomial theorem (Division priorities might be fucked, but result ok)
- `z*T(z) = (1/2)*(1 - (1 - 4z)^0.5)`
- `SUM{k=0}( (r<-k) x^(r-k) y^k )`
- `z*T(z) = (1/2)*(1 - SUM{N>=0}( (0.5<-N) 1^(0.5-N) (-4z)^N ))`
- `z*T(z) = (1/2)*(1 - SUM{N>=0}( (0.5<-N) (-4z)^N ))`
- `z*T(z) = (1/2)*(1 - SUM{N>=1}( (0.5<-N) (-4z)^N ) + (0.5<-0))`
- `z*T(z) = (1/2)*(1 - SUM{N>=1}( (0.5<-N) (-4z)^N ) + 1)` https://fr.wikipedia.org/wiki/Formule_du_bin%C3%B4me_g%C3%A9n%C3%A9ralis%C3%A9e
- `z*T(z) = -0.5*SUM{N>=1}( (0.5<-N) (-4z)^N )`

##### Subsitution (N)->(N+1) plus magie (Division priorities might be fucked, but result ok)
- `T(N) = -0.5 (0.5<-N+1) (-4)^(N+1)`

##### Generalized binomial coeficient (Division priorities might be fucked, but result ok)
- `T(N) = -0.5 ( (0.5)(0.5-1)(0.5-2)...(0.5-N) )/( (N+1)! ) (-4)^(N+1)`
- `T(N) = ( (0.5)(0.5-1)(0.5-2)...(0.5-N) ) * -0.5 * (-4)^(N+1) / (N+1)!`
- `T(N) = ( (0.5)(0.5-1)(0.5-2)...(0.5-N) ) * -0.5 * (-4) * (-4)^N / (N+1)!`
- `T(N) = ( (0.5)(0.5-1)(0.5-2)...(0.5-N) ) * 2 * (-4)^N / (N+1)!`
- `T(N) = ( (0.5)(0.5-1)(0.5-2)...(0.5-N) ) * 2 * (-2)^N * 2^N / (N+1)!`
- `T(N) = ( (0.5)(0.5-1)(-2)(0.5-2)(-2)...(0.5-N)(-2) ) * 2 * 2^N / (N+1)!`
- `T(N) = ( (0.5)1*3...(2N-1) ) * 2 * 2^N / (N+1)!`
- `T(N) = ( 1*3...(2N-1) ) * 2^N / (N+1)!`

##### Substitute (`2^N`)->(`2/1*4/2*6/3`)
- `T(N) = ( 1*3...(2N-1) ) / (N+1)! * ( ( 2*4*6...2N ) / (1*2*3...N) )`
- `T(N) = ( 1*3...(2N-1) ) / N! * ( 1/(N+1) ) * ( ( 2*4*6...2N ) / (1*2*3...N) )`
- `T(N) = ( 1*3...(2N-1) ) / N! * ( 1/(N+1) ) * ( ( 2*4*6...2N ) / N! )`
- `T(N) = ( 1*3...(2N-1)*2*4*6...(2N) ) / N! * ( 1/(N+1) )`
- `T(N) = (2N)! / N! * ( 1/(N+1) )`
- `T(N) = ( 1/(N+1) ) * (2N<-N)` (Catalan number)

#####4. Asymptotic approximation
- `T(N) = (2N)! / N! * ( 1/(N+1) )`
- `T(N) = exp( ln(2N!) - 2ln(N!) -ln(N+1) )`
- stirling: `ln N! ~= NlnN - N + ln((2piN)^0.5)`
- `T(N) ~= exp( 2Nln2N - 2N + ln((4piN)^0.5)
				   - 2( NlnN - N + ln((2piN)^0.5) )
				   - ln(N+1) )` (-ln(N+1) or -ln(N) in last term??)
- `T(N) ~= exp( 2Nln2N + ln((4piN)^0.5)
				   - 2NlnN - 2ln((2piN)^0.5)
				   - ln(N+1) ) ` TODO: expand to solution 
- `T(N) ~= 4^N / (pi*N^3)^0.5`

# Lecture 1: Analysis of Algorithms
### Resources
- Analysis of Algorithms (2nd edition) (2013) Text book (1st edition 1995)
- Analytic Combinatorics ()
- Algorithms (4th edition) ()
- Book site(s) 

- Knuth's books
- Flajolet's books
- Math typesetting (tex texshot latexit mathjax)
- Symbolic math (Maple16, soge, mathematica 8)
- web references (oeis, wikipedia, mathworld, nist handbook)
