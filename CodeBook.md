# Codebook for `tidy_data.csv`

## Description of Original Data
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

## Description of Processed Tidy Data




This dataset contains features that have been further processed. The only features that were saved were those with `mean` or `std` contained in their names. We then took the mean of each feature by subject and activity. There were 30 subjects.

The following are the resulting 81 variables in the data table. This list of 81 variables comes the 79 originally kept features with `mean` or `std` in their names plus one variable for activity and one variable for subject.


```
##  [1] "subject"                         "activity"                       
##  [3] "tBodyAcc.mean...X"               "tBodyAcc.mean...Y"              
##  [5] "tBodyAcc.mean...Z"               "tBodyAcc.std...X"               
##  [7] "tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
##  [9] "tGravityAcc.mean...X"            "tGravityAcc.mean...Y"           
## [11] "tGravityAcc.mean...Z"            "tGravityAcc.std...X"            
## [13] "tGravityAcc.std...Y"             "tGravityAcc.std...Z"            
## [15] "tBodyAccJerk.mean...X"           "tBodyAccJerk.mean...Y"          
## [17] "tBodyAccJerk.mean...Z"           "tBodyAccJerk.std...X"           
## [19] "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
## [21] "tBodyGyro.mean...X"              "tBodyGyro.mean...Y"             
## [23] "tBodyGyro.mean...Z"              "tBodyGyro.std...X"              
## [25] "tBodyGyro.std...Y"               "tBodyGyro.std...Z"              
## [27] "tBodyGyroJerk.mean...X"          "tBodyGyroJerk.mean...Y"         
## [29] "tBodyGyroJerk.mean...Z"          "tBodyGyroJerk.std...X"          
## [31] "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
## [33] "tBodyAccMag.mean.."              "tBodyAccMag.std.."              
## [35] "tGravityAccMag.mean.."           "tGravityAccMag.std.."           
## [37] "tBodyAccJerkMag.mean.."          "tBodyAccJerkMag.std.."          
## [39] "tBodyGyroMag.mean.."             "tBodyGyroMag.std.."             
## [41] "tBodyGyroJerkMag.mean.."         "tBodyGyroJerkMag.std.."         
## [43] "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"              
## [45] "fBodyAcc.mean...Z"               "fBodyAcc.std...X"               
## [47] "fBodyAcc.std...Y"                "fBodyAcc.std...Z"               
## [49] "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"          
## [51] "fBodyAcc.meanFreq...Z"           "fBodyAccJerk.mean...X"          
## [53] "fBodyAccJerk.mean...Y"           "fBodyAccJerk.mean...Z"          
## [55] "fBodyAccJerk.std...X"            "fBodyAccJerk.std...Y"           
## [57] "fBodyAccJerk.std...Z"            "fBodyAccJerk.meanFreq...X"      
## [59] "fBodyAccJerk.meanFreq...Y"       "fBodyAccJerk.meanFreq...Z"      
## [61] "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"             
## [63] "fBodyGyro.mean...Z"              "fBodyGyro.std...X"              
## [65] "fBodyGyro.std...Y"               "fBodyGyro.std...Z"              
## [67] "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"         
## [69] "fBodyGyro.meanFreq...Z"          "fBodyAccMag.mean.."             
## [71] "fBodyAccMag.std.."               "fBodyAccMag.meanFreq.."         
## [73] "fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.std.."      
## [75] "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."        
## [77] "fBodyBodyGyroMag.std.."          "fBodyBodyGyroMag.meanFreq.."    
## [79] "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.std.."     
## [81] "fBodyBodyGyroJerkMag.meanFreq.."
```



```
##                                    Min.   1st Qu.   Median     Mean
## tBodyAcc.mean...X                0.2220  0.271000  0.27700  0.27400
## tBodyAcc.mean...Y               -0.0405 -0.020000 -0.01730 -0.01790
## tBodyAcc.mean...Z               -0.1530 -0.112000 -0.10800 -0.10900
## tBodyAcc.std...X                -0.9960 -0.980000 -0.75300 -0.55800
## tBodyAcc.std...Y                -0.9900 -0.942000 -0.50900 -0.46000
## tBodyAcc.std...Z                -0.9880 -0.950000 -0.65200 -0.57600
## tGravityAcc.mean...X            -0.6800  0.838000  0.92100  0.69700
## tGravityAcc.mean...Y            -0.4800 -0.233000 -0.12800 -0.01620
## tGravityAcc.mean...Z            -0.4950 -0.117000  0.02380  0.07410
## tGravityAcc.std...X             -0.9970 -0.982000 -0.96900 -0.96400
## tGravityAcc.std...Y             -0.9940 -0.971000 -0.95900 -0.95200
## tGravityAcc.std...Z             -0.9910 -0.961000 -0.94500 -0.93600
## tBodyAccJerk.mean...X            0.0427  0.074000  0.07640  0.07950
## tBodyAccJerk.mean...Y           -0.0387  0.000466  0.00947  0.00757
## tBodyAccJerk.mean...Z           -0.0675 -0.010600 -0.00386 -0.00495
## tBodyAccJerk.std...X            -0.9950 -0.983000 -0.81000 -0.59500
## tBodyAccJerk.std...Y            -0.9900 -0.972000 -0.77600 -0.56500
## tBodyAccJerk.std...Z            -0.9930 -0.983000 -0.88400 -0.73600
## tBodyGyro.mean...X              -0.2060 -0.047100 -0.02870 -0.03240
## tBodyGyro.mean...Y              -0.2040 -0.089500 -0.07320 -0.07430
## tBodyGyro.mean...Z              -0.0725  0.074700  0.08510  0.08740
## tBodyGyro.std...X               -0.9940 -0.973000 -0.78900 -0.69200
## tBodyGyro.std...Y               -0.9940 -0.963000 -0.80200 -0.65300
## tBodyGyro.std...Z               -0.9860 -0.961000 -0.80100 -0.61600
## tBodyGyroJerk.mean...X          -0.1570 -0.103000 -0.09870 -0.09610
## tBodyGyroJerk.mean...Y          -0.0768 -0.045500 -0.04110 -0.04270
## tBodyGyroJerk.mean...Z          -0.0925 -0.061700 -0.05340 -0.05480
## tBodyGyroJerk.std...X           -0.9970 -0.980000 -0.84000 -0.70400
## tBodyGyroJerk.std...Y           -0.9970 -0.983000 -0.89400 -0.76400
## tBodyGyroJerk.std...Z           -0.9950 -0.985000 -0.86100 -0.71000
## tBodyAccMag.mean..              -0.9860 -0.957000 -0.48300 -0.49700
## tBodyAccMag.std..               -0.9860 -0.943000 -0.60700 -0.54400
## tGravityAccMag.mean..           -0.9860 -0.957000 -0.48300 -0.49700
## tGravityAccMag.std..            -0.9860 -0.943000 -0.60700 -0.54400
## tBodyAccJerkMag.mean..          -0.9930 -0.981000 -0.81700 -0.60800
## tBodyAccJerkMag.std..           -0.9950 -0.977000 -0.80100 -0.58400
## tBodyGyroMag.mean..             -0.9810 -0.946000 -0.65500 -0.56500
## tBodyGyroMag.std..              -0.9810 -0.948000 -0.74200 -0.63000
## tBodyGyroJerkMag.mean..         -0.9970 -0.985000 -0.86500 -0.73600
## tBodyGyroJerkMag.std..          -0.9980 -0.980000 -0.88100 -0.75500
## fBodyAcc.mean...X               -0.9950 -0.979000 -0.76900 -0.57600
## fBodyAcc.mean...Y               -0.9890 -0.954000 -0.59500 -0.48900
## fBodyAcc.mean...Z               -0.9890 -0.962000 -0.72400 -0.63000
## fBodyAcc.std...X                -0.9970 -0.982000 -0.74700 -0.55200
## fBodyAcc.std...Y                -0.9910 -0.940000 -0.51300 -0.48100
## fBodyAcc.std...Z                -0.9870 -0.946000 -0.64400 -0.58200
## fBodyAcc.meanFreq...X           -0.6360 -0.392000 -0.25700 -0.23200
## fBodyAcc.meanFreq...Y           -0.3800 -0.081300  0.00785  0.01150
## fBodyAcc.meanFreq...Z           -0.5200 -0.036300  0.06580  0.04370
## fBodyAccJerk.mean...X           -0.9950 -0.983000 -0.81300 -0.61400
## fBodyAccJerk.mean...Y           -0.9890 -0.973000 -0.78200 -0.58800
## fBodyAccJerk.mean...Z           -0.9920 -0.980000 -0.87100 -0.71400
## fBodyAccJerk.std...X            -0.9950 -0.985000 -0.82500 -0.61200
## fBodyAccJerk.std...Y            -0.9900 -0.974000 -0.78500 -0.57100
## fBodyAccJerk.std...Z            -0.9930 -0.984000 -0.89500 -0.75600
## fBodyAccJerk.meanFreq...X       -0.5760 -0.290000 -0.06090 -0.06910
## fBodyAccJerk.meanFreq...Y       -0.6020 -0.398000 -0.23200 -0.22800
## fBodyAccJerk.meanFreq...Z       -0.6280 -0.309000 -0.09190 -0.13800
## fBodyGyro.mean...X              -0.9930 -0.970000 -0.73000 -0.63700
## fBodyGyro.mean...Y              -0.9940 -0.970000 -0.81400 -0.67700
## fBodyGyro.mean...Z              -0.9860 -0.962000 -0.79100 -0.60400
## fBodyGyro.std...X               -0.9950 -0.975000 -0.80900 -0.71100
## fBodyGyro.std...Y               -0.9940 -0.960000 -0.79600 -0.64500
## fBodyGyro.std...Z               -0.9870 -0.964000 -0.82200 -0.65800
## fBodyGyro.meanFreq...X          -0.3960 -0.213000 -0.11600 -0.10500
## fBodyGyro.meanFreq...Y          -0.6670 -0.294000 -0.15800 -0.16700
## fBodyGyro.meanFreq...Z          -0.5070 -0.155000 -0.05080 -0.05720
## fBodyAccMag.mean..              -0.9870 -0.956000 -0.67000 -0.53700
## fBodyAccMag.std..               -0.9880 -0.945000 -0.65100 -0.62100
## fBodyAccMag.meanFreq..          -0.3120 -0.014700  0.08130  0.07610
## fBodyBodyAccJerkMag.mean..      -0.9940 -0.977000 -0.79400 -0.57600
## fBodyBodyAccJerkMag.std..       -0.9940 -0.975000 -0.81300 -0.59900
## fBodyBodyAccJerkMag.meanFreq..  -0.1250  0.045300  0.17200  0.16300
## fBodyBodyGyroMag.mean..         -0.9870 -0.962000 -0.76600 -0.66700
## fBodyBodyGyroMag.std..          -0.9810 -0.949000 -0.77300 -0.67200
## fBodyBodyGyroMag.meanFreq..     -0.4570 -0.170000 -0.05350 -0.03600
## fBodyBodyGyroJerkMag.mean..     -0.9980 -0.981000 -0.87800 -0.75600
## fBodyBodyGyroJerkMag.std..      -0.9980 -0.980000 -0.89400 -0.77200
## fBodyBodyGyroJerkMag.meanFreq.. -0.1830  0.054200  0.11200  0.12600
##                                  3rd Qu.     Max.
## tBodyAcc.mean...X                0.28000  0.30100
## tBodyAcc.mean...Y               -0.01490 -0.00131
## tBodyAcc.mean...Z               -0.10400 -0.07540
## tBodyAcc.std...X                -0.19800  0.62700
## tBodyAcc.std...Y                -0.03080  0.61700
## tBodyAcc.std...Z                -0.23100  0.60900
## tGravityAcc.mean...X             0.94300  0.97500
## tGravityAcc.mean...Y             0.08770  0.95700
## tGravityAcc.mean...Z             0.14900  0.95800
## tGravityAcc.std...X             -0.95100 -0.83000
## tGravityAcc.std...Y             -0.93700 -0.64400
## tGravityAcc.std...Z             -0.91800 -0.61000
## tBodyAccJerk.mean...X            0.08330  0.13000
## tBodyAccJerk.mean...Y            0.01340  0.05680
## tBodyAccJerk.mean...Z            0.00196  0.03810
## tBodyAccJerk.std...X            -0.22300  0.54400
## tBodyAccJerk.std...Y            -0.14800  0.35500
## tBodyAccJerk.std...Z            -0.51200  0.03100
## tBodyGyro.mean...X              -0.01680  0.19300
## tBodyGyro.mean...Y              -0.06110  0.02750
## tBodyGyro.mean...Z               0.10200  0.17900
## tBodyGyro.std...X               -0.44100  0.26800
## tBodyGyro.std...Y               -0.42000  0.47700
## tBodyGyro.std...Z               -0.31100  0.56500
## tBodyGyroJerk.mean...X          -0.09110 -0.02210
## tBodyGyroJerk.mean...Y          -0.03840 -0.01320
## tBodyGyroJerk.mean...Z          -0.04900 -0.00694
## tBodyGyroJerk.std...X           -0.46300  0.17900
## tBodyGyroJerk.std...Y           -0.58600  0.29600
## tBodyGyroJerk.std...Z           -0.47400  0.19300
## tBodyAccMag.mean..              -0.09190  0.64500
## tBodyAccMag.std..               -0.20900  0.42800
## tGravityAccMag.mean..           -0.09190  0.64500
## tGravityAccMag.std..            -0.20900  0.42800
## tBodyAccJerkMag.mean..          -0.24600  0.43400
## tBodyAccJerkMag.std..           -0.21700  0.45100
## tBodyGyroMag.mean..             -0.21600  0.41800
## tBodyGyroMag.std..              -0.36000  0.30000
## tBodyGyroJerkMag.mean..         -0.51200  0.08760
## tBodyGyroJerkMag.std..          -0.57700  0.25000
## fBodyAcc.mean...X               -0.21700  0.53700
## fBodyAcc.mean...Y               -0.06340  0.52400
## fBodyAcc.mean...Z               -0.31800  0.28100
## fBodyAcc.std...X                -0.19700  0.65900
## fBodyAcc.std...Y                -0.07910  0.56000
## fBodyAcc.std...Z                -0.26500  0.68700
## fBodyAcc.meanFreq...X           -0.06100  0.15900
## fBodyAcc.meanFreq...Y            0.08630  0.46700
## fBodyAcc.meanFreq...Z            0.17500  0.40300
## fBodyAccJerk.mean...X           -0.28200  0.47400
## fBodyAccJerk.mean...Y           -0.19600  0.27700
## fBodyAccJerk.mean...Z           -0.47000  0.15800
## fBodyAccJerk.std...X            -0.24800  0.47700
## fBodyAccJerk.std...Y            -0.16900  0.35000
## fBodyAccJerk.std...Z            -0.54400 -0.00624
## fBodyAccJerk.meanFreq...X        0.17700  0.33100
## fBodyAccJerk.meanFreq...Y       -0.04720  0.19600
## fBodyAccJerk.meanFreq...Z        0.03860  0.23000
## fBodyGyro.mean...X              -0.33900  0.47500
## fBodyGyro.mean...Y              -0.44600  0.32900
## fBodyGyro.mean...Z              -0.26300  0.49200
## fBodyGyro.std...X               -0.48100  0.19700
## fBodyGyro.std...Y               -0.41500  0.64600
## fBodyGyro.std...Z               -0.39200  0.52200
## fBodyGyro.meanFreq...X           0.00266  0.24900
## fBodyGyro.meanFreq...Y          -0.04270  0.27300
## fBodyGyro.meanFreq...Z           0.04150  0.37700
## fBodyAccMag.mean..              -0.16200  0.58700
## fBodyAccMag.std..               -0.36500  0.17900
## fBodyAccMag.meanFreq..           0.17400  0.43600
## fBodyBodyAccJerkMag.mean..      -0.18700  0.53800
## fBodyBodyAccJerkMag.std..       -0.26700  0.31600
## fBodyBodyAccJerkMag.meanFreq..   0.27600  0.48800
## fBodyBodyGyroMag.mean..         -0.40900  0.20400
## fBodyBodyGyroMag.std..          -0.42800  0.23700
## fBodyBodyGyroMag.meanFreq..      0.08230  0.41000
## fBodyBodyGyroJerkMag.mean..     -0.58300  0.14700
## fBodyBodyGyroJerkMag.std..      -0.60800  0.28800
## fBodyBodyGyroJerkMag.meanFreq..  0.20800  0.42600
```


