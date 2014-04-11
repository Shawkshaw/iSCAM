## ------------------------------------------------------------------------- ##
## CONTROL FILE TEMPLATE                                                     ##
## ------------------------------------------------------------------------- ##
##
##
## ------------------------------------------------------------------------- ##
## CONTROLS FOR LEADING PARAMETERS                                           ##
##  Prior descriptions:                                                      ##
##                      -0 uniform      (0,0)                                ##
##                      -1 normal       (p1=mu,p2=sig)                       ##
##                      -2 lognormal    (p1=log(mu),p2=sig)                  ##
##                      -3 beta         (p1=alpha,p2=beta)                   ##
##                      -4 gamma        (p1=alpha,p2=beta)                   ##
## ------------------------------------------------------------------------- ##
## npar
7
## ival         lb      ub      phz     prior   p1      p2      #parameter   ##
   7.60         -5.0    15      4       0       -5.0    15      #log_ro      ##
   0.67         0.2     1.0     4       3       10.0    4.925   #steepness   ##
   -0.7985      -5.0    2.0     3       1       -0.798  0.4     #log_m       ##
   7.40         -5.0    15      1       0       -5.0    15      #log_avgrec  ##
   7.20         -5.0    15      1       0       -5.0    15      #log_recinit ##
   0.30434      0.001   0.999   3       3       17.086  39.05   #rho         ##
   0.86956      0.01    5.0     3       4       25.0    28.75   #vartheta    ##
## ------------------------------------------------------------------------- ##
##
##
## ------------------------------------------------------------------------- ##
## SELECTIVITY PARAMETERS Columns for gear                                   ##
## OPTIONS FOR SELECTIVITY (isel_type):                                      ##
##      1) logistic selectivity parameters                                   ##
##      2) selectivity coefficients                                          ##
##      3) a constant cubic spline with age-nodes                            ##
##      4) a time varying cubic spline with age-nodes                        ##
##      5) a time varying bicubic spline with age & year nodes.              ##
##      6) fixed logistic (set isel_type=6, and estimation phase to -1)      ##
##      7) logistic function of body weight.                                 ##
##      8) logistic with weight deviations (3 parameters)                    ##
##      11) logistic selectivity with 2 parameters based on mean length      ##
##      12) length-based selectivity coefficients with spline interpolation  ##
##      sig=0.05 0.10 0.15 0.20 0.30 0.40 0.50                               ##
##      wt =200. 50.0 22.2 12.5 5.56 3.12 2.00                               ##
## ------------------------------------------------------------------------- ##
1     1     8     6     6     6     6       # -selectivity type ivector for gear
2.0   3.0   0.6   2.055 2.055 2.055 2.055   # -50% selectivity (logistic)
0.25  0.25  0.15  0.05  0.05  0.05  0.05    # -STD at 50% selectivity (logistic)
5     5     5     0     0     0     0       # -No. of age nodes (0=ignore)
0     0     0     0     0     0     0       # -No. of year nodes (0=ignore)
2     2     2     -1    -1    -1    -1      # -Phase of estimation (-1 for fixed)
125.  125.  125.  12.5  12.5  12.5  12.5    # -Penwt for 2nd differences w=1/(2*sig^2)
50.0  50.0  50.0  50.0  50.0  50.0  50.0    # -Penwt for dome-shaped w=1/(2*sig^2)
## ------------------------------------------------------------------------- ##
##
##
##
## ------------------------------------------------------------------------- ##
## PRIORS FOR SURVEY Q                                                       ##
## Prior type:                                                               ##
##          0 - uninformative prior                                          ##
##          1 - normal prior density for log(q)                              ##
##          2 - random walk in q                                             ##
## ------------------------------------------------------------------------- ##
2                   # -number of surveys (nits)
1   1               # -prior type (see legend above)
-0.569  -0.569      # -prior log(mean)
 0.274   0.274      # -prior sd
## ------------------------------------------------------------------------- ##
##

## ------------------------------------------------------------------------- ##
## OTHER MISCELANEOUS CONTROLS                                               ##
## ------------------------------------------------------------------------- ##
0           # 1  -verbose ADMB output (0=off, 1=on)
1           # 2  -recruitment model (1=beverton-holt, 2=ricker)
0.100       # 3  -std in observed catches in first phase.
0.0707      # 4  -std in observed catches in last phase.
0           # 5  -Assume unfished in first year (0=FALSE, 1=TRUE)
0.02        # 6  -Minimum proportion to consider in age-proportions for dmvlogistic
0.20        # 7  -Mean fishing mortality for regularizing the estimates of Ft
0.01        # 8  -std in mean fishing mortality in first phase
2.00        # 9  -std in mean fishing mortality in last phase
3           # 10 -phase for estimating m_deviations (use -1 to turn off mdevs)
0.1         # 11 -std in deviations for natural mortality
12	        # 12 -number of estimated nodes for deviations in natural mortality
1.00        # 13 -fraction of total mortality that takes place prior to spawning
1           # 14 -switch for age-composition likelihood (1=dmvlogistic,2=dmultinom)
##
## ------------------------------------------------------------------------- ##
## MARKER FOR END OF CONTROL FILE (eofc)
## ------------------------------------------------------------------------- ##
999
