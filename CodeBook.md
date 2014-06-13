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

The following are the resulting 475 variables in the data table. This list of 475 variables comes from combining the 6 activities with the 79 features that had `mean` or `std` in their names (6 * 79 = 474) and one variable for subject.


```
##   [1] "subject"                                           
##   [2] "WALKING.tBodyAcc.mean...X"                         
##   [3] "WALKING.tBodyAcc.mean...Y"                         
##   [4] "WALKING.tBodyAcc.mean...Z"                         
##   [5] "WALKING.tBodyAcc.std...X"                          
##   [6] "WALKING.tBodyAcc.std...Y"                          
##   [7] "WALKING.tBodyAcc.std...Z"                          
##   [8] "WALKING.tGravityAcc.mean...X"                      
##   [9] "WALKING.tGravityAcc.mean...Y"                      
##  [10] "WALKING.tGravityAcc.mean...Z"                      
##  [11] "WALKING.tGravityAcc.std...X"                       
##  [12] "WALKING.tGravityAcc.std...Y"                       
##  [13] "WALKING.tGravityAcc.std...Z"                       
##  [14] "WALKING.tBodyAccJerk.mean...X"                     
##  [15] "WALKING.tBodyAccJerk.mean...Y"                     
##  [16] "WALKING.tBodyAccJerk.mean...Z"                     
##  [17] "WALKING.tBodyAccJerk.std...X"                      
##  [18] "WALKING.tBodyAccJerk.std...Y"                      
##  [19] "WALKING.tBodyAccJerk.std...Z"                      
##  [20] "WALKING.tBodyGyro.mean...X"                        
##  [21] "WALKING.tBodyGyro.mean...Y"                        
##  [22] "WALKING.tBodyGyro.mean...Z"                        
##  [23] "WALKING.tBodyGyro.std...X"                         
##  [24] "WALKING.tBodyGyro.std...Y"                         
##  [25] "WALKING.tBodyGyro.std...Z"                         
##  [26] "WALKING.tBodyGyroJerk.mean...X"                    
##  [27] "WALKING.tBodyGyroJerk.mean...Y"                    
##  [28] "WALKING.tBodyGyroJerk.mean...Z"                    
##  [29] "WALKING.tBodyGyroJerk.std...X"                     
##  [30] "WALKING.tBodyGyroJerk.std...Y"                     
##  [31] "WALKING.tBodyGyroJerk.std...Z"                     
##  [32] "WALKING.tBodyAccMag.mean.."                        
##  [33] "WALKING.tBodyAccMag.std.."                         
##  [34] "WALKING.tGravityAccMag.mean.."                     
##  [35] "WALKING.tGravityAccMag.std.."                      
##  [36] "WALKING.tBodyAccJerkMag.mean.."                    
##  [37] "WALKING.tBodyAccJerkMag.std.."                     
##  [38] "WALKING.tBodyGyroMag.mean.."                       
##  [39] "WALKING.tBodyGyroMag.std.."                        
##  [40] "WALKING.tBodyGyroJerkMag.mean.."                   
##  [41] "WALKING.tBodyGyroJerkMag.std.."                    
##  [42] "WALKING.fBodyAcc.mean...X"                         
##  [43] "WALKING.fBodyAcc.mean...Y"                         
##  [44] "WALKING.fBodyAcc.mean...Z"                         
##  [45] "WALKING.fBodyAcc.std...X"                          
##  [46] "WALKING.fBodyAcc.std...Y"                          
##  [47] "WALKING.fBodyAcc.std...Z"                          
##  [48] "WALKING.fBodyAcc.meanFreq...X"                     
##  [49] "WALKING.fBodyAcc.meanFreq...Y"                     
##  [50] "WALKING.fBodyAcc.meanFreq...Z"                     
##  [51] "WALKING.fBodyAccJerk.mean...X"                     
##  [52] "WALKING.fBodyAccJerk.mean...Y"                     
##  [53] "WALKING.fBodyAccJerk.mean...Z"                     
##  [54] "WALKING.fBodyAccJerk.std...X"                      
##  [55] "WALKING.fBodyAccJerk.std...Y"                      
##  [56] "WALKING.fBodyAccJerk.std...Z"                      
##  [57] "WALKING.fBodyAccJerk.meanFreq...X"                 
##  [58] "WALKING.fBodyAccJerk.meanFreq...Y"                 
##  [59] "WALKING.fBodyAccJerk.meanFreq...Z"                 
##  [60] "WALKING.fBodyGyro.mean...X"                        
##  [61] "WALKING.fBodyGyro.mean...Y"                        
##  [62] "WALKING.fBodyGyro.mean...Z"                        
##  [63] "WALKING.fBodyGyro.std...X"                         
##  [64] "WALKING.fBodyGyro.std...Y"                         
##  [65] "WALKING.fBodyGyro.std...Z"                         
##  [66] "WALKING.fBodyGyro.meanFreq...X"                    
##  [67] "WALKING.fBodyGyro.meanFreq...Y"                    
##  [68] "WALKING.fBodyGyro.meanFreq...Z"                    
##  [69] "WALKING.fBodyAccMag.mean.."                        
##  [70] "WALKING.fBodyAccMag.std.."                         
##  [71] "WALKING.fBodyAccMag.meanFreq.."                    
##  [72] "WALKING.fBodyBodyAccJerkMag.mean.."                
##  [73] "WALKING.fBodyBodyAccJerkMag.std.."                 
##  [74] "WALKING.fBodyBodyAccJerkMag.meanFreq.."            
##  [75] "WALKING.fBodyBodyGyroMag.mean.."                   
##  [76] "WALKING.fBodyBodyGyroMag.std.."                    
##  [77] "WALKING.fBodyBodyGyroMag.meanFreq.."               
##  [78] "WALKING.fBodyBodyGyroJerkMag.mean.."               
##  [79] "WALKING.fBodyBodyGyroJerkMag.std.."                
##  [80] "WALKING.fBodyBodyGyroJerkMag.meanFreq.."           
##  [81] "WALKING_UPSTAIRS.tBodyAcc.mean...X"                
##  [82] "WALKING_UPSTAIRS.tBodyAcc.mean...Y"                
##  [83] "WALKING_UPSTAIRS.tBodyAcc.mean...Z"                
##  [84] "WALKING_UPSTAIRS.tBodyAcc.std...X"                 
##  [85] "WALKING_UPSTAIRS.tBodyAcc.std...Y"                 
##  [86] "WALKING_UPSTAIRS.tBodyAcc.std...Z"                 
##  [87] "WALKING_UPSTAIRS.tGravityAcc.mean...X"             
##  [88] "WALKING_UPSTAIRS.tGravityAcc.mean...Y"             
##  [89] "WALKING_UPSTAIRS.tGravityAcc.mean...Z"             
##  [90] "WALKING_UPSTAIRS.tGravityAcc.std...X"              
##  [91] "WALKING_UPSTAIRS.tGravityAcc.std...Y"              
##  [92] "WALKING_UPSTAIRS.tGravityAcc.std...Z"              
##  [93] "WALKING_UPSTAIRS.tBodyAccJerk.mean...X"            
##  [94] "WALKING_UPSTAIRS.tBodyAccJerk.mean...Y"            
##  [95] "WALKING_UPSTAIRS.tBodyAccJerk.mean...Z"            
##  [96] "WALKING_UPSTAIRS.tBodyAccJerk.std...X"             
##  [97] "WALKING_UPSTAIRS.tBodyAccJerk.std...Y"             
##  [98] "WALKING_UPSTAIRS.tBodyAccJerk.std...Z"             
##  [99] "WALKING_UPSTAIRS.tBodyGyro.mean...X"               
## [100] "WALKING_UPSTAIRS.tBodyGyro.mean...Y"               
## [101] "WALKING_UPSTAIRS.tBodyGyro.mean...Z"               
## [102] "WALKING_UPSTAIRS.tBodyGyro.std...X"                
## [103] "WALKING_UPSTAIRS.tBodyGyro.std...Y"                
## [104] "WALKING_UPSTAIRS.tBodyGyro.std...Z"                
## [105] "WALKING_UPSTAIRS.tBodyGyroJerk.mean...X"           
## [106] "WALKING_UPSTAIRS.tBodyGyroJerk.mean...Y"           
## [107] "WALKING_UPSTAIRS.tBodyGyroJerk.mean...Z"           
## [108] "WALKING_UPSTAIRS.tBodyGyroJerk.std...X"            
## [109] "WALKING_UPSTAIRS.tBodyGyroJerk.std...Y"            
## [110] "WALKING_UPSTAIRS.tBodyGyroJerk.std...Z"            
## [111] "WALKING_UPSTAIRS.tBodyAccMag.mean.."               
## [112] "WALKING_UPSTAIRS.tBodyAccMag.std.."                
## [113] "WALKING_UPSTAIRS.tGravityAccMag.mean.."            
## [114] "WALKING_UPSTAIRS.tGravityAccMag.std.."             
## [115] "WALKING_UPSTAIRS.tBodyAccJerkMag.mean.."           
## [116] "WALKING_UPSTAIRS.tBodyAccJerkMag.std.."            
## [117] "WALKING_UPSTAIRS.tBodyGyroMag.mean.."              
## [118] "WALKING_UPSTAIRS.tBodyGyroMag.std.."               
## [119] "WALKING_UPSTAIRS.tBodyGyroJerkMag.mean.."          
## [120] "WALKING_UPSTAIRS.tBodyGyroJerkMag.std.."           
## [121] "WALKING_UPSTAIRS.fBodyAcc.mean...X"                
## [122] "WALKING_UPSTAIRS.fBodyAcc.mean...Y"                
## [123] "WALKING_UPSTAIRS.fBodyAcc.mean...Z"                
## [124] "WALKING_UPSTAIRS.fBodyAcc.std...X"                 
## [125] "WALKING_UPSTAIRS.fBodyAcc.std...Y"                 
## [126] "WALKING_UPSTAIRS.fBodyAcc.std...Z"                 
## [127] "WALKING_UPSTAIRS.fBodyAcc.meanFreq...X"            
## [128] "WALKING_UPSTAIRS.fBodyAcc.meanFreq...Y"            
## [129] "WALKING_UPSTAIRS.fBodyAcc.meanFreq...Z"            
## [130] "WALKING_UPSTAIRS.fBodyAccJerk.mean...X"            
## [131] "WALKING_UPSTAIRS.fBodyAccJerk.mean...Y"            
## [132] "WALKING_UPSTAIRS.fBodyAccJerk.mean...Z"            
## [133] "WALKING_UPSTAIRS.fBodyAccJerk.std...X"             
## [134] "WALKING_UPSTAIRS.fBodyAccJerk.std...Y"             
## [135] "WALKING_UPSTAIRS.fBodyAccJerk.std...Z"             
## [136] "WALKING_UPSTAIRS.fBodyAccJerk.meanFreq...X"        
## [137] "WALKING_UPSTAIRS.fBodyAccJerk.meanFreq...Y"        
## [138] "WALKING_UPSTAIRS.fBodyAccJerk.meanFreq...Z"        
## [139] "WALKING_UPSTAIRS.fBodyGyro.mean...X"               
## [140] "WALKING_UPSTAIRS.fBodyGyro.mean...Y"               
## [141] "WALKING_UPSTAIRS.fBodyGyro.mean...Z"               
## [142] "WALKING_UPSTAIRS.fBodyGyro.std...X"                
## [143] "WALKING_UPSTAIRS.fBodyGyro.std...Y"                
## [144] "WALKING_UPSTAIRS.fBodyGyro.std...Z"                
## [145] "WALKING_UPSTAIRS.fBodyGyro.meanFreq...X"           
## [146] "WALKING_UPSTAIRS.fBodyGyro.meanFreq...Y"           
## [147] "WALKING_UPSTAIRS.fBodyGyro.meanFreq...Z"           
## [148] "WALKING_UPSTAIRS.fBodyAccMag.mean.."               
## [149] "WALKING_UPSTAIRS.fBodyAccMag.std.."                
## [150] "WALKING_UPSTAIRS.fBodyAccMag.meanFreq.."           
## [151] "WALKING_UPSTAIRS.fBodyBodyAccJerkMag.mean.."       
## [152] "WALKING_UPSTAIRS.fBodyBodyAccJerkMag.std.."        
## [153] "WALKING_UPSTAIRS.fBodyBodyAccJerkMag.meanFreq.."   
## [154] "WALKING_UPSTAIRS.fBodyBodyGyroMag.mean.."          
## [155] "WALKING_UPSTAIRS.fBodyBodyGyroMag.std.."           
## [156] "WALKING_UPSTAIRS.fBodyBodyGyroMag.meanFreq.."      
## [157] "WALKING_UPSTAIRS.fBodyBodyGyroJerkMag.mean.."      
## [158] "WALKING_UPSTAIRS.fBodyBodyGyroJerkMag.std.."       
## [159] "WALKING_UPSTAIRS.fBodyBodyGyroJerkMag.meanFreq.."  
## [160] "WALKING_DOWNSTAIRS.tBodyAcc.mean...X"              
## [161] "WALKING_DOWNSTAIRS.tBodyAcc.mean...Y"              
## [162] "WALKING_DOWNSTAIRS.tBodyAcc.mean...Z"              
## [163] "WALKING_DOWNSTAIRS.tBodyAcc.std...X"               
## [164] "WALKING_DOWNSTAIRS.tBodyAcc.std...Y"               
## [165] "WALKING_DOWNSTAIRS.tBodyAcc.std...Z"               
## [166] "WALKING_DOWNSTAIRS.tGravityAcc.mean...X"           
## [167] "WALKING_DOWNSTAIRS.tGravityAcc.mean...Y"           
## [168] "WALKING_DOWNSTAIRS.tGravityAcc.mean...Z"           
## [169] "WALKING_DOWNSTAIRS.tGravityAcc.std...X"            
## [170] "WALKING_DOWNSTAIRS.tGravityAcc.std...Y"            
## [171] "WALKING_DOWNSTAIRS.tGravityAcc.std...Z"            
## [172] "WALKING_DOWNSTAIRS.tBodyAccJerk.mean...X"          
## [173] "WALKING_DOWNSTAIRS.tBodyAccJerk.mean...Y"          
## [174] "WALKING_DOWNSTAIRS.tBodyAccJerk.mean...Z"          
## [175] "WALKING_DOWNSTAIRS.tBodyAccJerk.std...X"           
## [176] "WALKING_DOWNSTAIRS.tBodyAccJerk.std...Y"           
## [177] "WALKING_DOWNSTAIRS.tBodyAccJerk.std...Z"           
## [178] "WALKING_DOWNSTAIRS.tBodyGyro.mean...X"             
## [179] "WALKING_DOWNSTAIRS.tBodyGyro.mean...Y"             
## [180] "WALKING_DOWNSTAIRS.tBodyGyro.mean...Z"             
## [181] "WALKING_DOWNSTAIRS.tBodyGyro.std...X"              
## [182] "WALKING_DOWNSTAIRS.tBodyGyro.std...Y"              
## [183] "WALKING_DOWNSTAIRS.tBodyGyro.std...Z"              
## [184] "WALKING_DOWNSTAIRS.tBodyGyroJerk.mean...X"         
## [185] "WALKING_DOWNSTAIRS.tBodyGyroJerk.mean...Y"         
## [186] "WALKING_DOWNSTAIRS.tBodyGyroJerk.mean...Z"         
## [187] "WALKING_DOWNSTAIRS.tBodyGyroJerk.std...X"          
## [188] "WALKING_DOWNSTAIRS.tBodyGyroJerk.std...Y"          
## [189] "WALKING_DOWNSTAIRS.tBodyGyroJerk.std...Z"          
## [190] "WALKING_DOWNSTAIRS.tBodyAccMag.mean.."             
## [191] "WALKING_DOWNSTAIRS.tBodyAccMag.std.."              
## [192] "WALKING_DOWNSTAIRS.tGravityAccMag.mean.."          
## [193] "WALKING_DOWNSTAIRS.tGravityAccMag.std.."           
## [194] "WALKING_DOWNSTAIRS.tBodyAccJerkMag.mean.."         
## [195] "WALKING_DOWNSTAIRS.tBodyAccJerkMag.std.."          
## [196] "WALKING_DOWNSTAIRS.tBodyGyroMag.mean.."            
## [197] "WALKING_DOWNSTAIRS.tBodyGyroMag.std.."             
## [198] "WALKING_DOWNSTAIRS.tBodyGyroJerkMag.mean.."        
## [199] "WALKING_DOWNSTAIRS.tBodyGyroJerkMag.std.."         
## [200] "WALKING_DOWNSTAIRS.fBodyAcc.mean...X"              
## [201] "WALKING_DOWNSTAIRS.fBodyAcc.mean...Y"              
## [202] "WALKING_DOWNSTAIRS.fBodyAcc.mean...Z"              
## [203] "WALKING_DOWNSTAIRS.fBodyAcc.std...X"               
## [204] "WALKING_DOWNSTAIRS.fBodyAcc.std...Y"               
## [205] "WALKING_DOWNSTAIRS.fBodyAcc.std...Z"               
## [206] "WALKING_DOWNSTAIRS.fBodyAcc.meanFreq...X"          
## [207] "WALKING_DOWNSTAIRS.fBodyAcc.meanFreq...Y"          
## [208] "WALKING_DOWNSTAIRS.fBodyAcc.meanFreq...Z"          
## [209] "WALKING_DOWNSTAIRS.fBodyAccJerk.mean...X"          
## [210] "WALKING_DOWNSTAIRS.fBodyAccJerk.mean...Y"          
## [211] "WALKING_DOWNSTAIRS.fBodyAccJerk.mean...Z"          
## [212] "WALKING_DOWNSTAIRS.fBodyAccJerk.std...X"           
## [213] "WALKING_DOWNSTAIRS.fBodyAccJerk.std...Y"           
## [214] "WALKING_DOWNSTAIRS.fBodyAccJerk.std...Z"           
## [215] "WALKING_DOWNSTAIRS.fBodyAccJerk.meanFreq...X"      
## [216] "WALKING_DOWNSTAIRS.fBodyAccJerk.meanFreq...Y"      
## [217] "WALKING_DOWNSTAIRS.fBodyAccJerk.meanFreq...Z"      
## [218] "WALKING_DOWNSTAIRS.fBodyGyro.mean...X"             
## [219] "WALKING_DOWNSTAIRS.fBodyGyro.mean...Y"             
## [220] "WALKING_DOWNSTAIRS.fBodyGyro.mean...Z"             
## [221] "WALKING_DOWNSTAIRS.fBodyGyro.std...X"              
## [222] "WALKING_DOWNSTAIRS.fBodyGyro.std...Y"              
## [223] "WALKING_DOWNSTAIRS.fBodyGyro.std...Z"              
## [224] "WALKING_DOWNSTAIRS.fBodyGyro.meanFreq...X"         
## [225] "WALKING_DOWNSTAIRS.fBodyGyro.meanFreq...Y"         
## [226] "WALKING_DOWNSTAIRS.fBodyGyro.meanFreq...Z"         
## [227] "WALKING_DOWNSTAIRS.fBodyAccMag.mean.."             
## [228] "WALKING_DOWNSTAIRS.fBodyAccMag.std.."              
## [229] "WALKING_DOWNSTAIRS.fBodyAccMag.meanFreq.."         
## [230] "WALKING_DOWNSTAIRS.fBodyBodyAccJerkMag.mean.."     
## [231] "WALKING_DOWNSTAIRS.fBodyBodyAccJerkMag.std.."      
## [232] "WALKING_DOWNSTAIRS.fBodyBodyAccJerkMag.meanFreq.." 
## [233] "WALKING_DOWNSTAIRS.fBodyBodyGyroMag.mean.."        
## [234] "WALKING_DOWNSTAIRS.fBodyBodyGyroMag.std.."         
## [235] "WALKING_DOWNSTAIRS.fBodyBodyGyroMag.meanFreq.."    
## [236] "WALKING_DOWNSTAIRS.fBodyBodyGyroJerkMag.mean.."    
## [237] "WALKING_DOWNSTAIRS.fBodyBodyGyroJerkMag.std.."     
## [238] "WALKING_DOWNSTAIRS.fBodyBodyGyroJerkMag.meanFreq.."
## [239] "SITTING.tBodyAcc.mean...X"                         
## [240] "SITTING.tBodyAcc.mean...Y"                         
## [241] "SITTING.tBodyAcc.mean...Z"                         
## [242] "SITTING.tBodyAcc.std...X"                          
## [243] "SITTING.tBodyAcc.std...Y"                          
## [244] "SITTING.tBodyAcc.std...Z"                          
## [245] "SITTING.tGravityAcc.mean...X"                      
## [246] "SITTING.tGravityAcc.mean...Y"                      
## [247] "SITTING.tGravityAcc.mean...Z"                      
## [248] "SITTING.tGravityAcc.std...X"                       
## [249] "SITTING.tGravityAcc.std...Y"                       
## [250] "SITTING.tGravityAcc.std...Z"                       
## [251] "SITTING.tBodyAccJerk.mean...X"                     
## [252] "SITTING.tBodyAccJerk.mean...Y"                     
## [253] "SITTING.tBodyAccJerk.mean...Z"                     
## [254] "SITTING.tBodyAccJerk.std...X"                      
## [255] "SITTING.tBodyAccJerk.std...Y"                      
## [256] "SITTING.tBodyAccJerk.std...Z"                      
## [257] "SITTING.tBodyGyro.mean...X"                        
## [258] "SITTING.tBodyGyro.mean...Y"                        
## [259] "SITTING.tBodyGyro.mean...Z"                        
## [260] "SITTING.tBodyGyro.std...X"                         
## [261] "SITTING.tBodyGyro.std...Y"                         
## [262] "SITTING.tBodyGyro.std...Z"                         
## [263] "SITTING.tBodyGyroJerk.mean...X"                    
## [264] "SITTING.tBodyGyroJerk.mean...Y"                    
## [265] "SITTING.tBodyGyroJerk.mean...Z"                    
## [266] "SITTING.tBodyGyroJerk.std...X"                     
## [267] "SITTING.tBodyGyroJerk.std...Y"                     
## [268] "SITTING.tBodyGyroJerk.std...Z"                     
## [269] "SITTING.tBodyAccMag.mean.."                        
## [270] "SITTING.tBodyAccMag.std.."                         
## [271] "SITTING.tGravityAccMag.mean.."                     
## [272] "SITTING.tGravityAccMag.std.."                      
## [273] "SITTING.tBodyAccJerkMag.mean.."                    
## [274] "SITTING.tBodyAccJerkMag.std.."                     
## [275] "SITTING.tBodyGyroMag.mean.."                       
## [276] "SITTING.tBodyGyroMag.std.."                        
## [277] "SITTING.tBodyGyroJerkMag.mean.."                   
## [278] "SITTING.tBodyGyroJerkMag.std.."                    
## [279] "SITTING.fBodyAcc.mean...X"                         
## [280] "SITTING.fBodyAcc.mean...Y"                         
## [281] "SITTING.fBodyAcc.mean...Z"                         
## [282] "SITTING.fBodyAcc.std...X"                          
## [283] "SITTING.fBodyAcc.std...Y"                          
## [284] "SITTING.fBodyAcc.std...Z"                          
## [285] "SITTING.fBodyAcc.meanFreq...X"                     
## [286] "SITTING.fBodyAcc.meanFreq...Y"                     
## [287] "SITTING.fBodyAcc.meanFreq...Z"                     
## [288] "SITTING.fBodyAccJerk.mean...X"                     
## [289] "SITTING.fBodyAccJerk.mean...Y"                     
## [290] "SITTING.fBodyAccJerk.mean...Z"                     
## [291] "SITTING.fBodyAccJerk.std...X"                      
## [292] "SITTING.fBodyAccJerk.std...Y"                      
## [293] "SITTING.fBodyAccJerk.std...Z"                      
## [294] "SITTING.fBodyAccJerk.meanFreq...X"                 
## [295] "SITTING.fBodyAccJerk.meanFreq...Y"                 
## [296] "SITTING.fBodyAccJerk.meanFreq...Z"                 
## [297] "SITTING.fBodyGyro.mean...X"                        
## [298] "SITTING.fBodyGyro.mean...Y"                        
## [299] "SITTING.fBodyGyro.mean...Z"                        
## [300] "SITTING.fBodyGyro.std...X"                         
## [301] "SITTING.fBodyGyro.std...Y"                         
## [302] "SITTING.fBodyGyro.std...Z"                         
## [303] "SITTING.fBodyGyro.meanFreq...X"                    
## [304] "SITTING.fBodyGyro.meanFreq...Y"                    
## [305] "SITTING.fBodyGyro.meanFreq...Z"                    
## [306] "SITTING.fBodyAccMag.mean.."                        
## [307] "SITTING.fBodyAccMag.std.."                         
## [308] "SITTING.fBodyAccMag.meanFreq.."                    
## [309] "SITTING.fBodyBodyAccJerkMag.mean.."                
## [310] "SITTING.fBodyBodyAccJerkMag.std.."                 
## [311] "SITTING.fBodyBodyAccJerkMag.meanFreq.."            
## [312] "SITTING.fBodyBodyGyroMag.mean.."                   
## [313] "SITTING.fBodyBodyGyroMag.std.."                    
## [314] "SITTING.fBodyBodyGyroMag.meanFreq.."               
## [315] "SITTING.fBodyBodyGyroJerkMag.mean.."               
## [316] "SITTING.fBodyBodyGyroJerkMag.std.."                
## [317] "SITTING.fBodyBodyGyroJerkMag.meanFreq.."           
## [318] "STANDING.tBodyAcc.mean...X"                        
## [319] "STANDING.tBodyAcc.mean...Y"                        
## [320] "STANDING.tBodyAcc.mean...Z"                        
## [321] "STANDING.tBodyAcc.std...X"                         
## [322] "STANDING.tBodyAcc.std...Y"                         
## [323] "STANDING.tBodyAcc.std...Z"                         
## [324] "STANDING.tGravityAcc.mean...X"                     
## [325] "STANDING.tGravityAcc.mean...Y"                     
## [326] "STANDING.tGravityAcc.mean...Z"                     
## [327] "STANDING.tGravityAcc.std...X"                      
## [328] "STANDING.tGravityAcc.std...Y"                      
## [329] "STANDING.tGravityAcc.std...Z"                      
## [330] "STANDING.tBodyAccJerk.mean...X"                    
## [331] "STANDING.tBodyAccJerk.mean...Y"                    
## [332] "STANDING.tBodyAccJerk.mean...Z"                    
## [333] "STANDING.tBodyAccJerk.std...X"                     
## [334] "STANDING.tBodyAccJerk.std...Y"                     
## [335] "STANDING.tBodyAccJerk.std...Z"                     
## [336] "STANDING.tBodyGyro.mean...X"                       
## [337] "STANDING.tBodyGyro.mean...Y"                       
## [338] "STANDING.tBodyGyro.mean...Z"                       
## [339] "STANDING.tBodyGyro.std...X"                        
## [340] "STANDING.tBodyGyro.std...Y"                        
## [341] "STANDING.tBodyGyro.std...Z"                        
## [342] "STANDING.tBodyGyroJerk.mean...X"                   
## [343] "STANDING.tBodyGyroJerk.mean...Y"                   
## [344] "STANDING.tBodyGyroJerk.mean...Z"                   
## [345] "STANDING.tBodyGyroJerk.std...X"                    
## [346] "STANDING.tBodyGyroJerk.std...Y"                    
## [347] "STANDING.tBodyGyroJerk.std...Z"                    
## [348] "STANDING.tBodyAccMag.mean.."                       
## [349] "STANDING.tBodyAccMag.std.."                        
## [350] "STANDING.tGravityAccMag.mean.."                    
## [351] "STANDING.tGravityAccMag.std.."                     
## [352] "STANDING.tBodyAccJerkMag.mean.."                   
## [353] "STANDING.tBodyAccJerkMag.std.."                    
## [354] "STANDING.tBodyGyroMag.mean.."                      
## [355] "STANDING.tBodyGyroMag.std.."                       
## [356] "STANDING.tBodyGyroJerkMag.mean.."                  
## [357] "STANDING.tBodyGyroJerkMag.std.."                   
## [358] "STANDING.fBodyAcc.mean...X"                        
## [359] "STANDING.fBodyAcc.mean...Y"                        
## [360] "STANDING.fBodyAcc.mean...Z"                        
## [361] "STANDING.fBodyAcc.std...X"                         
## [362] "STANDING.fBodyAcc.std...Y"                         
## [363] "STANDING.fBodyAcc.std...Z"                         
## [364] "STANDING.fBodyAcc.meanFreq...X"                    
## [365] "STANDING.fBodyAcc.meanFreq...Y"                    
## [366] "STANDING.fBodyAcc.meanFreq...Z"                    
## [367] "STANDING.fBodyAccJerk.mean...X"                    
## [368] "STANDING.fBodyAccJerk.mean...Y"                    
## [369] "STANDING.fBodyAccJerk.mean...Z"                    
## [370] "STANDING.fBodyAccJerk.std...X"                     
## [371] "STANDING.fBodyAccJerk.std...Y"                     
## [372] "STANDING.fBodyAccJerk.std...Z"                     
## [373] "STANDING.fBodyAccJerk.meanFreq...X"                
## [374] "STANDING.fBodyAccJerk.meanFreq...Y"                
## [375] "STANDING.fBodyAccJerk.meanFreq...Z"                
## [376] "STANDING.fBodyGyro.mean...X"                       
## [377] "STANDING.fBodyGyro.mean...Y"                       
## [378] "STANDING.fBodyGyro.mean...Z"                       
## [379] "STANDING.fBodyGyro.std...X"                        
## [380] "STANDING.fBodyGyro.std...Y"                        
## [381] "STANDING.fBodyGyro.std...Z"                        
## [382] "STANDING.fBodyGyro.meanFreq...X"                   
## [383] "STANDING.fBodyGyro.meanFreq...Y"                   
## [384] "STANDING.fBodyGyro.meanFreq...Z"                   
## [385] "STANDING.fBodyAccMag.mean.."                       
## [386] "STANDING.fBodyAccMag.std.."                        
## [387] "STANDING.fBodyAccMag.meanFreq.."                   
## [388] "STANDING.fBodyBodyAccJerkMag.mean.."               
## [389] "STANDING.fBodyBodyAccJerkMag.std.."                
## [390] "STANDING.fBodyBodyAccJerkMag.meanFreq.."           
## [391] "STANDING.fBodyBodyGyroMag.mean.."                  
## [392] "STANDING.fBodyBodyGyroMag.std.."                   
## [393] "STANDING.fBodyBodyGyroMag.meanFreq.."              
## [394] "STANDING.fBodyBodyGyroJerkMag.mean.."              
## [395] "STANDING.fBodyBodyGyroJerkMag.std.."               
## [396] "STANDING.fBodyBodyGyroJerkMag.meanFreq.."          
## [397] "LAYING.tBodyAcc.mean...X"                          
## [398] "LAYING.tBodyAcc.mean...Y"                          
## [399] "LAYING.tBodyAcc.mean...Z"                          
## [400] "LAYING.tBodyAcc.std...X"                           
## [401] "LAYING.tBodyAcc.std...Y"                           
## [402] "LAYING.tBodyAcc.std...Z"                           
## [403] "LAYING.tGravityAcc.mean...X"                       
## [404] "LAYING.tGravityAcc.mean...Y"                       
## [405] "LAYING.tGravityAcc.mean...Z"                       
## [406] "LAYING.tGravityAcc.std...X"                        
## [407] "LAYING.tGravityAcc.std...Y"                        
## [408] "LAYING.tGravityAcc.std...Z"                        
## [409] "LAYING.tBodyAccJerk.mean...X"                      
## [410] "LAYING.tBodyAccJerk.mean...Y"                      
## [411] "LAYING.tBodyAccJerk.mean...Z"                      
## [412] "LAYING.tBodyAccJerk.std...X"                       
## [413] "LAYING.tBodyAccJerk.std...Y"                       
## [414] "LAYING.tBodyAccJerk.std...Z"                       
## [415] "LAYING.tBodyGyro.mean...X"                         
## [416] "LAYING.tBodyGyro.mean...Y"                         
## [417] "LAYING.tBodyGyro.mean...Z"                         
## [418] "LAYING.tBodyGyro.std...X"                          
## [419] "LAYING.tBodyGyro.std...Y"                          
## [420] "LAYING.tBodyGyro.std...Z"                          
## [421] "LAYING.tBodyGyroJerk.mean...X"                     
## [422] "LAYING.tBodyGyroJerk.mean...Y"                     
## [423] "LAYING.tBodyGyroJerk.mean...Z"                     
## [424] "LAYING.tBodyGyroJerk.std...X"                      
## [425] "LAYING.tBodyGyroJerk.std...Y"                      
## [426] "LAYING.tBodyGyroJerk.std...Z"                      
## [427] "LAYING.tBodyAccMag.mean.."                         
## [428] "LAYING.tBodyAccMag.std.."                          
## [429] "LAYING.tGravityAccMag.mean.."                      
## [430] "LAYING.tGravityAccMag.std.."                       
## [431] "LAYING.tBodyAccJerkMag.mean.."                     
## [432] "LAYING.tBodyAccJerkMag.std.."                      
## [433] "LAYING.tBodyGyroMag.mean.."                        
## [434] "LAYING.tBodyGyroMag.std.."                         
## [435] "LAYING.tBodyGyroJerkMag.mean.."                    
## [436] "LAYING.tBodyGyroJerkMag.std.."                     
## [437] "LAYING.fBodyAcc.mean...X"                          
## [438] "LAYING.fBodyAcc.mean...Y"                          
## [439] "LAYING.fBodyAcc.mean...Z"                          
## [440] "LAYING.fBodyAcc.std...X"                           
## [441] "LAYING.fBodyAcc.std...Y"                           
## [442] "LAYING.fBodyAcc.std...Z"                           
## [443] "LAYING.fBodyAcc.meanFreq...X"                      
## [444] "LAYING.fBodyAcc.meanFreq...Y"                      
## [445] "LAYING.fBodyAcc.meanFreq...Z"                      
## [446] "LAYING.fBodyAccJerk.mean...X"                      
## [447] "LAYING.fBodyAccJerk.mean...Y"                      
## [448] "LAYING.fBodyAccJerk.mean...Z"                      
## [449] "LAYING.fBodyAccJerk.std...X"                       
## [450] "LAYING.fBodyAccJerk.std...Y"                       
## [451] "LAYING.fBodyAccJerk.std...Z"                       
## [452] "LAYING.fBodyAccJerk.meanFreq...X"                  
## [453] "LAYING.fBodyAccJerk.meanFreq...Y"                  
## [454] "LAYING.fBodyAccJerk.meanFreq...Z"                  
## [455] "LAYING.fBodyGyro.mean...X"                         
## [456] "LAYING.fBodyGyro.mean...Y"                         
## [457] "LAYING.fBodyGyro.mean...Z"                         
## [458] "LAYING.fBodyGyro.std...X"                          
## [459] "LAYING.fBodyGyro.std...Y"                          
## [460] "LAYING.fBodyGyro.std...Z"                          
## [461] "LAYING.fBodyGyro.meanFreq...X"                     
## [462] "LAYING.fBodyGyro.meanFreq...Y"                     
## [463] "LAYING.fBodyGyro.meanFreq...Z"                     
## [464] "LAYING.fBodyAccMag.mean.."                         
## [465] "LAYING.fBodyAccMag.std.."                          
## [466] "LAYING.fBodyAccMag.meanFreq.."                     
## [467] "LAYING.fBodyBodyAccJerkMag.mean.."                 
## [468] "LAYING.fBodyBodyAccJerkMag.std.."                  
## [469] "LAYING.fBodyBodyAccJerkMag.meanFreq.."             
## [470] "LAYING.fBodyBodyGyroMag.mean.."                    
## [471] "LAYING.fBodyBodyGyroMag.std.."                     
## [472] "LAYING.fBodyBodyGyroMag.meanFreq.."                
## [473] "LAYING.fBodyBodyGyroJerkMag.mean.."                
## [474] "LAYING.fBodyBodyGyroJerkMag.std.."                 
## [475] "LAYING.fBodyBodyGyroJerkMag.meanFreq.."
```



```
##         WALKING.tBodyAcc.mean...X WALKING.tBodyAcc.mean...Y
## Min.                        0.272                   -0.0225
## 1st Qu.                     0.274                   -0.0186
## Median                      0.276                   -0.0177
## Mean                        0.276                   -0.0179
## 3rd Qu.                     0.279                   -0.0168
## Max.                        0.284                   -0.0148
##         WALKING.tBodyAcc.mean...Z WALKING.tBodyAcc.std...X
## Min.                      -0.1230                 -0.59600
## 1st Qu.                   -0.1110                 -0.37200
## Median                    -0.1090                 -0.32300
## Mean                      -0.1090                 -0.30600
## 3rd Qu.                   -0.1070                 -0.25000
## Max.                      -0.0986                 -0.00866
##         WALKING.tBodyAcc.std...Y WALKING.tBodyAcc.std...Z
## Min.                     -0.3150                   -0.586
## 1st Qu.                  -0.1330                   -0.422
## Median                   -0.0736                   -0.277
## Mean                     -0.0205                   -0.272
## 3rd Qu.                   0.0945                   -0.162
## Max.                      0.4900                    0.164
##         WALKING.tGravityAcc.mean...X WALKING.tGravityAcc.mean...Y
## Min.                           0.803                      -0.3710
## 1st Qu.                        0.927                      -0.2580
## Median                         0.939                      -0.2000
## Mean                           0.935                      -0.1960
## 3rd Qu.                        0.959                      -0.1290
## Max.                           0.973                      -0.0314
##         WALKING.tGravityAcc.mean...Z WALKING.tGravityAcc.std...X
## Min.                         -0.4220                      -0.984
## 1st Qu.                      -0.1400                      -0.980
## Median                       -0.0645                      -0.978
## Mean                         -0.0567                      -0.977
## 3rd Qu.                       0.0495                      -0.975
## Max.                          0.1880                      -0.970
##         WALKING.tGravityAcc.std...Y WALKING.tGravityAcc.std...Z
## Min.                         -0.975                      -0.975
## 1st Qu.                      -0.971                      -0.961
## Median                       -0.967                      -0.956
## Mean                         -0.967                      -0.955
## 3rd Qu.                      -0.963                      -0.948
## Max.                         -0.954                      -0.929
##         WALKING.tBodyAccJerk.mean...X WALKING.tBodyAccJerk.mean...Y
## Min.                           0.0458                      -0.02110
## 1st Qu.                        0.0704                       0.00319
## Median                         0.0772                       0.01290
## Mean                           0.0767                       0.01110
## 3rd Qu.                        0.0838                       0.02090
## Max.                           0.0987                       0.03570
##         WALKING.tBodyAccJerk.mean...Z WALKING.tBodyAccJerk.std...X
## Min.                         -0.03280                       -0.608
## 1st Qu.                      -0.00757                       -0.365
## Median                       -0.00134                       -0.287
## Mean                         -0.00228                       -0.261
## 3rd Qu.                       0.00488                       -0.151
## Max.                          0.02440                        0.110
##         WALKING.tBodyAccJerk.std...Y WALKING.tBodyAccJerk.std...Z
## Min.                        -0.42600                      -0.7510
## 1st Qu.                     -0.25200                      -0.5660
## Median                      -0.08830                      -0.4970
## Mean                        -0.09810                      -0.4740
## 3rd Qu.                      0.00192                      -0.3980
## Max.                         0.24400                      -0.0293
##         WALKING.tBodyGyro.mean...X WALKING.tBodyGyro.mean...Y
## Min.                       -0.1060                    -0.0961
## 1st Qu.                    -0.0520                    -0.0820
## Median                     -0.0296                    -0.0716
## Mean                       -0.0346                    -0.0694
## 3rd Qu.                    -0.0107                    -0.0629
## Max.                        0.0235                    -0.0173
##         WALKING.tBodyGyro.mean...Z WALKING.tBodyGyro.std...X
## Min.                        0.0510                   -0.7040
## 1st Qu.                     0.0808                   -0.5690
## Median                      0.0843                   -0.4920
## Mean                        0.0864                   -0.4670
## 3rd Qu.                     0.0965                   -0.4040
## Max.                        0.1180                   -0.0264
##         WALKING.tBodyGyro.std...Y WALKING.tBodyGyro.std...Z
## Min.                       -0.665                   -0.6630
## 1st Qu.                    -0.503                   -0.4220
## Median                     -0.452                   -0.3520
## Mean                       -0.353                   -0.3320
## 3rd Qu.                    -0.217                   -0.2180
## Max.                        0.259                   -0.0754
##         WALKING.tBodyGyroJerk.mean...X WALKING.tBodyGyroJerk.mean...Y
## Min.                           -0.1360                        -0.0617
## 1st Qu.                        -0.1090                        -0.0514
## Median                         -0.0924                        -0.0449
## Mean                           -0.0946                        -0.0445
## 3rd Qu.                        -0.0822                        -0.0389
## Max.                           -0.0578                        -0.0307
##         WALKING.tBodyGyroJerk.mean...Z WALKING.tBodyGyroJerk.std...X
## Min.                           -0.0903                       -0.6760
## 1st Qu.                        -0.0601                       -0.4920
## Median                         -0.0519                       -0.3900
## Mean                           -0.0543                       -0.3750
## 3rd Qu.                        -0.0493                       -0.2480
## Max.                           -0.0343                        0.0801
##         WALKING.tBodyGyroJerk.std...Y WALKING.tBodyGyroJerk.std...Z
## Min.                           -0.807                        -0.663
## 1st Qu.                        -0.639                        -0.534
## Median                         -0.566                        -0.467
## Mean                           -0.515                        -0.443
## 3rd Qu.                        -0.442                        -0.378
## Max.                            0.296                        -0.158
##         WALKING.tBodyAccMag.mean.. WALKING.tBodyAccMag.std..
## Min.                       -0.4050                   -0.5660
## 1st Qu.                    -0.2510                   -0.4220
## Median                     -0.1550                   -0.3440
## Mean                       -0.1610                   -0.3330
## 3rd Qu.                    -0.0997                   -0.2240
## Max.                        0.0722                   -0.0994
##         WALKING.tGravityAccMag.mean.. WALKING.tGravityAccMag.std..
## Min.                          -0.4050                      -0.5660
## 1st Qu.                       -0.2510                      -0.4220
## Median                        -0.1550                      -0.3440
## Mean                          -0.1610                      -0.3330
## 3rd Qu.                       -0.0997                      -0.2240
## Max.                           0.0722                      -0.0994
##         WALKING.tBodyAccJerkMag.mean.. WALKING.tBodyAccJerkMag.std..
## Min.                            -0.538                       -0.5430
## 1st Qu.                         -0.344                       -0.3450
## Median                          -0.260                       -0.2250
## Mean                            -0.235                       -0.2090
## 3rd Qu.                         -0.142                       -0.0716
## Max.                             0.109                        0.1120
##         WALKING.tBodyGyroMag.mean.. WALKING.tBodyGyroMag.std..
## Min.                         -0.500                     -0.665
## 1st Qu.                      -0.396                     -0.534
## Median                       -0.300                     -0.420
## Mean                         -0.274                     -0.385
## 3rd Qu.                      -0.173                     -0.257
## Max.                          0.100                      0.163
##         WALKING.tBodyGyroJerkMag.mean.. WALKING.tBodyGyroJerkMag.std..
## Min.                            -0.6810                         -0.757
## 1st Qu.                         -0.5470                         -0.611
## Median                          -0.5090                         -0.552
## Mean                            -0.4600                         -0.500
## 3rd Qu.                         -0.3610                         -0.460
## Max.                             0.0115                          0.250
##         WALKING.fBodyAcc.mean...X WALKING.fBodyAcc.mean...Y
## Min.                       -0.609                   -0.3220
## 1st Qu.                    -0.359                   -0.1490
## Median                     -0.313                   -0.0682
## Mean                       -0.291                   -0.0377
## 3rd Qu.                    -0.214                    0.0806
## Max.                       -0.030                    0.4030
##         WALKING.fBodyAcc.mean...Z WALKING.fBodyAcc.std...X
## Min.                      -0.6310                  -0.5910
## 1st Qu.                   -0.4460                  -0.3790
## Median                    -0.3360                  -0.3310
## Mean                      -0.3380                  -0.3140
## 3rd Qu.                   -0.2520                  -0.2510
## Max.                       0.0814                   0.0244
##         WALKING.fBodyAcc.std...Y WALKING.fBodyAcc.std...Z
## Min.                     -0.3540                   -0.594
## 1st Qu.                  -0.1850                   -0.439
## Median                   -0.1270                   -0.299
## Mean                     -0.0751                   -0.295
## 3rd Qu.                   0.0329                   -0.194
## Max.                      0.4380                    0.133
##         WALKING.fBodyAcc.meanFreq...X WALKING.fBodyAcc.meanFreq...Y
## Min.                           -0.415                      -0.16300
## 1st Qu.                        -0.350                      -0.00064
## Median                         -0.306                       0.02560
## Mean                           -0.287                       0.05490
## 3rd Qu.                        -0.228                       0.14000
## Max.                           -0.139                       0.31000
##         WALKING.fBodyAcc.meanFreq...Z WALKING.fBodyAccJerk.mean...X
## Min.                         -0.17600                       -0.6260
## 1st Qu.                       0.00961                       -0.3910
## Median                        0.07190                       -0.3300
## Mean                          0.08260                       -0.3050
## 3rd Qu.                       0.16600                       -0.2030
## Max.                          0.35200                        0.0336
##         WALKING.fBodyAccJerk.mean...Y WALKING.fBodyAccJerk.mean...Z
## Min.                           -0.454                       -0.7290
## 1st Qu.                        -0.298                       -0.5370
## Median                         -0.148                       -0.4660
## Mean                           -0.165                       -0.4450
## 3rd Qu.                        -0.069                       -0.3860
## Max.                            0.160                       -0.0572
##         WALKING.fBodyAccJerk.std...X WALKING.fBodyAccJerk.std...Y
## Min.                         -0.6240                      -0.4340
## 1st Qu.                      -0.3740                      -0.2240
## Median                       -0.3110                      -0.0608
## Mean                         -0.2810                      -0.0865
## 3rd Qu.                      -0.1760                       0.0222
## Max.                          0.0908                       0.3160
##         WALKING.fBodyAccJerk.std...Z WALKING.fBodyAccJerk.meanFreq...X
## Min.                        -0.77200                           -0.4370
## 1st Qu.                     -0.60000                           -0.3210
## Median                      -0.53000                           -0.2590
## Mean                        -0.50100                           -0.2600
## 3rd Qu.                     -0.41800                           -0.2110
## Max.                        -0.00624                           -0.0727
##         WALKING.fBodyAccJerk.meanFreq...Y
## Min.                              -0.5460
## 1st Qu.                           -0.4260
## Median                            -0.3860
## Mean                              -0.3500
## 3rd Qu.                           -0.2760
## Max.                              -0.0699
##         WALKING.fBodyAccJerk.meanFreq...Z WALKING.fBodyGyro.mean...X
## Min.                              -0.4630                     -0.610
## 1st Qu.                           -0.3400                     -0.431
## Median                            -0.2450                     -0.374
## Mean                              -0.2360                     -0.343
## 3rd Qu.                           -0.1830                     -0.260
## Max.                               0.0558                      0.228
##         WALKING.fBodyGyro.mean...Y WALKING.fBodyGyro.mean...Z
## Min.                        -0.688                    -0.6010
## 1st Qu.                     -0.550                    -0.3980
## Median                      -0.474                    -0.3000
## Mean                        -0.392                    -0.3050
## 3rd Qu.                     -0.257                    -0.2130
## Max.                         0.196                    -0.0105
##         WALKING.fBodyGyro.std...X WALKING.fBodyGyro.std...Y
## Min.                       -0.735                    -0.655
## 1st Qu.                    -0.612                    -0.501
## Median                     -0.531                    -0.442
## Mean                       -0.508                    -0.338
## 3rd Qu.                    -0.441                    -0.194
## Max.                       -0.108                     0.287
##         WALKING.fBodyGyro.std...Z WALKING.fBodyGyro.meanFreq...X
## Min.                       -0.716                       -0.33400
## 1st Qu.                    -0.497                       -0.14400
## Median                     -0.424                       -0.05860
## Mean                       -0.405                       -0.06650
## 3rd Qu.                    -0.290                        0.00362
## Max.                       -0.143                        0.18100
##         WALKING.fBodyGyro.meanFreq...Y WALKING.fBodyGyro.meanFreq...Z
## Min.                          -0.42000                        -0.3610
## 1st Qu.                       -0.24400                        -0.1790
## Median                        -0.07100                        -0.0761
## Mean                          -0.09550                        -0.0723
## 3rd Qu.                        0.00184                         0.0110
## Max.                           0.27300                         0.3030
##         WALKING.fBodyAccMag.mean.. WALKING.fBodyAccMag.std..
## Min.                       -0.5660                    -0.651
## 1st Qu.                    -0.3780                    -0.561
## Median                     -0.2980                    -0.458
## Mean                       -0.2700                    -0.477
## 3rd Qu.                    -0.1520                    -0.400
## Max.                        0.0322                    -0.325
##         WALKING.fBodyAccMag.meanFreq.. WALKING.fBodyBodyAccJerkMag.mean..
## Min.                           -0.0368                            -0.5650
## 1st Qu.                         0.1180                            -0.3440
## Median                          0.1750                            -0.2230
## Mean                            0.1880                            -0.2090
## 3rd Qu.                         0.2500                            -0.0558
## Max.                            0.3930                             0.0730
##         WALKING.fBodyBodyAccJerkMag.std..
## Min.                              -0.5190
## 1st Qu.                           -0.3610
## Median                            -0.2400
## Mean                              -0.2160
## 3rd Qu.                           -0.0568
## Max.                               0.1580
##         WALKING.fBodyBodyAccJerkMag.meanFreq..
## Min.                                   -0.1170
## 1st Qu.                                 0.0169
## Median                                  0.0930
## Mean                                    0.0766
## 3rd Qu.                                 0.1250
## Max.                                    0.2080
##         WALKING.fBodyBodyGyroMag.mean.. WALKING.fBodyBodyGyroMag.std..
## Min.                             -0.669                        -0.7210
## 1st Qu.                          -0.534                        -0.5980
## Median                           -0.463                        -0.5110
## Mean                             -0.411                        -0.4760
## 3rd Qu.                          -0.316                        -0.3530
## Max.                              0.185                        -0.0615
##         WALKING.fBodyBodyGyroMag.meanFreq..
## Min.                                -0.1520
## 1st Qu.                              0.0745
## Median                               0.1780
## Mean                                 0.1640
## 3rd Qu.                              0.2870
## Max.                                 0.4100
##         WALKING.fBodyBodyGyroJerkMag.mean..
## Min.                                 -0.770
## 1st Qu.                              -0.622
## Median                               -0.577
## Mean                                 -0.517
## 3rd Qu.                              -0.480
## Max.                                  0.147
##         WALKING.fBodyBodyGyroJerkMag.std..
## Min.                                -0.774
## 1st Qu.                             -0.636
## Median                              -0.566
## Mean                                -0.515
## 3rd Qu.                             -0.436
## Max.                                 0.288
##         WALKING.fBodyBodyGyroJerkMag.meanFreq..
## Min.                                    -0.0761
## 1st Qu.                                  0.0536
## Median                                   0.1170
## Mean                                     0.1320
## 3rd Qu.                                  0.2090
## Max.                                     0.2950
##         WALKING_UPSTAIRS.tBodyAcc.mean...X
## Min.                                 0.242
## 1st Qu.                              0.256
## Median                               0.263
## Mean                                 0.262
## 3rd Qu.                              0.268
## Max.                                 0.278
##         WALKING_UPSTAIRS.tBodyAcc.mean...Y
## Min.                               -0.0325
## 1st Qu.                            -0.0286
## Median                             -0.0271
## Mean                               -0.0259
## 3rd Qu.                            -0.0231
## Max.                               -0.0144
##         WALKING_UPSTAIRS.tBodyAcc.mean...Z
## Min.                               -0.1530
## 1st Qu.                            -0.1250
## Median                             -0.1210
## Mean                               -0.1210
## 3rd Qu.                            -0.1140
## Max.                               -0.0973
##         WALKING_UPSTAIRS.tBodyAcc.std...X
## Min.                              -0.4600
## 1st Qu.                           -0.3120
## Median                            -0.2430
## Mean                              -0.2290
## 3rd Qu.                           -0.1370
## Max.                               0.0836
##         WALKING_UPSTAIRS.tBodyAcc.std...Y
## Min.                             -0.32600
## 1st Qu.                          -0.12100
## Median                           -0.00936
## Mean                             -0.00649
## 3rd Qu.                           0.10900
## Max.                              0.34900
##         WALKING_UPSTAIRS.tBodyAcc.std...Z
## Min.                               -0.437
## 1st Qu.                            -0.306
## Median                             -0.224
## Mean                               -0.173
## 3rd Qu.                            -0.110
## Max.                                0.609
##         WALKING_UPSTAIRS.tGravityAcc.mean...X
## Min.                                    0.688
## 1st Qu.                                 0.844
## Median                                  0.886
## Mean                                    0.874
## 3rd Qu.                                 0.925
## Max.                                    0.946
##         WALKING_UPSTAIRS.tGravityAcc.mean...Y
## Min.                                  -0.4800
## 1st Qu.                               -0.3430
## Median                                -0.2880
## Mean                                  -0.2820
## 3rd Qu.                               -0.2300
## Max.                                  -0.0378
##         WALKING_UPSTAIRS.tGravityAcc.mean...Z
## Min.                                  -0.4950
## 1st Qu.                               -0.2660
## Median                                -0.1470
## Mean                                  -0.1440
## 3rd Qu.                               -0.0194
## Max.                                   0.1470
##         WALKING_UPSTAIRS.tGravityAcc.std...X
## Min.                                  -0.962
## 1st Qu.                               -0.956
## Median                                -0.952
## Mean                                  -0.948
## 3rd Qu.                               -0.941
## Max.                                  -0.916
##         WALKING_UPSTAIRS.tGravityAcc.std...Y
## Min.                                  -0.953
## 1st Qu.                               -0.938
## Median                                -0.924
## Mean                                  -0.926
## 3rd Qu.                               -0.915
## Max.                                  -0.901
##         WALKING_UPSTAIRS.tGravityAcc.std...Z
## Min.                                  -0.938
## 1st Qu.                               -0.921
## Median                                -0.907
## Mean                                  -0.902
## 3rd Qu.                               -0.882
## Max.                                  -0.837
##         WALKING_UPSTAIRS.tBodyAccJerk.mean...X
## Min.                                    0.0427
## 1st Qu.                                 0.0722
## Median                                  0.0750
## Mean                                    0.0772
## 3rd Qu.                                 0.0827
## Max.                                    0.1060
##         WALKING_UPSTAIRS.tBodyAccJerk.mean...Y
## Min.                                  -0.01830
## 1st Qu.                               -0.00403
## Median                                 0.00516
## Mean                                   0.00940
## 3rd Qu.                                0.02200
## Max.                                   0.05680
##         WALKING_UPSTAIRS.tBodyAccJerk.mean...Z
## Min.                                  -0.06750
## 1st Qu.                               -0.02520
## Median                                -0.00123
## Mean                                  -0.00671
## 3rd Qu.                                0.00872
## Max.                                   0.03810
##         WALKING_UPSTAIRS.tBodyAccJerk.std...X
## Min.                                 -0.66400
## 1st Qu.                              -0.45700
## Median                               -0.36300
## Mean                                 -0.34800
## 3rd Qu.                              -0.19600
## Max.                                 -0.00854
##         WALKING_UPSTAIRS.tBodyAccJerk.std...Y
## Min.                                  -0.6270
## 1st Qu.                               -0.4270
## Median                                -0.3300
## Mean                                  -0.3250
## 3rd Qu.                               -0.2150
## Max.                                  -0.0124
##         WALKING_UPSTAIRS.tBodyAccJerk.std...Z
## Min.                                   -0.812
## 1st Qu.                                -0.708
## Median                                 -0.638
## Mean                                   -0.620
## 3rd Qu.                                -0.561
## Max.                                   -0.328
##         WALKING_UPSTAIRS.tBodyGyro.mean...X
## Min.                               -0.16400
## 1st Qu.                            -0.07200
## Median                              0.03950
## Mean                                0.00889
## 3rd Qu.                             0.07310
## Max.                                0.19300
##         WALKING_UPSTAIRS.tBodyGyro.mean...Y
## Min.                                -0.2040
## 1st Qu.                             -0.1380
## Median                              -0.0907
## Mean                                -0.0903
## 3rd Qu.                             -0.0494
## Max.                                 0.0212
##         WALKING_UPSTAIRS.tBodyGyro.mean...Z
## Min.                                -0.0725
## 1st Qu.                              0.0224
## Median                               0.0676
## Mean                                 0.0581
## 3rd Qu.                              0.0905
## Max.                                 0.1460
##         WALKING_UPSTAIRS.tBodyGyro.std...X
## Min.                                -0.594
## 1st Qu.                             -0.531
## Median                              -0.491
## Mean                                -0.463
## 3rd Qu.                             -0.409
## Max.                                -0.301
##         WALKING_UPSTAIRS.tBodyGyro.std...Y
## Min.                                -0.603
## 1st Qu.                             -0.519
## Median                              -0.437
## Mean                                -0.341
## 3rd Qu.                             -0.200
## Max.                                 0.477
##         WALKING_UPSTAIRS.tBodyGyro.std...Z
## Min.                                -0.695
## 1st Qu.                             -0.364
## Median                              -0.250
## Mean                                -0.227
## 3rd Qu.                             -0.159
## Max.                                 0.565
##         WALKING_UPSTAIRS.tBodyGyroJerk.mean...X
## Min.                                    -0.1570
## 1st Qu.                                 -0.1430
## Median                                  -0.1190
## Mean                                    -0.1130
## 3rd Qu.                                 -0.0867
## Max.                                    -0.0456
##         WALKING_UPSTAIRS.tBodyGyroJerk.mean...Y
## Min.                                    -0.0720
## 1st Qu.                                 -0.0476
## Median                                  -0.0388
## Mean                                    -0.0387
## 3rd Qu.                                 -0.0306
## Max.                                    -0.0132
##         WALKING_UPSTAIRS.tBodyGyroJerk.mean...Z
## Min.                                   -0.09250
## 1st Qu.                                -0.06710
## Median                                 -0.05340
## Mean                                   -0.05260
## 3rd Qu.                                -0.04170
## Max.                                   -0.00694
##         WALKING_UPSTAIRS.tBodyGyroJerk.std...X
## Min.                                    -0.761
## 1st Qu.                                 -0.645
## Median                                  -0.549
## Mean                                    -0.543
## 3rd Qu.                                 -0.472
## Max.                                    -0.187
##         WALKING_UPSTAIRS.tBodyGyroJerk.std...Y
## Min.                                    -0.841
## 1st Qu.                                 -0.757
## Median                                  -0.685
## Mean                                    -0.661
## 3rd Qu.                                 -0.605
## Max.                                    -0.371
##         WALKING_UPSTAIRS.tBodyGyroJerk.std...Z
## Min.                                    -0.777
## 1st Qu.                                 -0.658
## Median                                  -0.569
## Mean                                    -0.554
## 3rd Qu.                                 -0.491
## Max.                                    -0.171
##         WALKING_UPSTAIRS.tBodyAccMag.mean..
## Min.                               -0.30600
## 1st Qu.                            -0.18600
## Median                             -0.11900
## Mean                               -0.09120
## 3rd Qu.                             0.00601
## Max.                                0.21000
##         WALKING_UPSTAIRS.tBodyAccMag.std..
## Min.                               -0.4800
## 1st Qu.                            -0.3270
## Median                             -0.2500
## Mean                               -0.2440
## 3rd Qu.                            -0.1630
## Max.                               -0.0198
##         WALKING_UPSTAIRS.tGravityAccMag.mean..
## Min.                                  -0.30600
## 1st Qu.                               -0.18600
## Median                                -0.11900
## Mean                                  -0.09120
## 3rd Qu.                                0.00601
## Max.                                   0.21000
##         WALKING_UPSTAIRS.tGravityAccMag.std..
## Min.                                  -0.4800
## 1st Qu.                               -0.3270
## Median                                -0.2500
## Mean                                  -0.2440
## 3rd Qu.                               -0.1630
## Max.                                  -0.0198
##         WALKING_UPSTAIRS.tBodyAccJerkMag.mean..
## Min.                                    -0.6790
## 1st Qu.                                 -0.4650
## Median                                  -0.3950
## Mean                                    -0.3780
## 3rd Qu.                                 -0.2910
## Max.                                    -0.0958
##         WALKING_UPSTAIRS.tBodyAccJerkMag.std..
## Min.                                   -0.6750
## 1st Qu.                                -0.4610
## Median                                 -0.3770
## Mean                                   -0.3750
## 3rd Qu.                                -0.2910
## Max.                                   -0.0877
##         WALKING_UPSTAIRS.tBodyGyroMag.mean..
## Min.                                  -0.369
## 1st Qu.                               -0.296
## Median                                -0.227
## Mean                                  -0.171
## 3rd Qu.                               -0.117
## Max.                                   0.366
##         WALKING_UPSTAIRS.tBodyGyroMag.std..
## Min.                                 -0.528
## 1st Qu.                              -0.468
## Median                               -0.383
## Mean                                 -0.333
## 3rd Qu.                              -0.215
## Max.                                  0.300
##         WALKING_UPSTAIRS.tBodyGyroJerkMag.mean..
## Min.                                      -0.782
## 1st Qu.                                   -0.674
## Median                                    -0.635
## Mean                                      -0.600
## 3rd Qu.                                   -0.535
## Max.                                      -0.343
##         WALKING_UPSTAIRS.tBodyGyroJerkMag.std..
## Min.                                     -0.836
## 1st Qu.                                  -0.743
## Median                                   -0.673
## Mean                                     -0.661
## 3rd Qu.                                  -0.603
## Max.                                     -0.440
##         WALKING_UPSTAIRS.fBodyAcc.mean...X
## Min.                               -0.5220
## 1st Qu.                            -0.3900
## Median                             -0.3070
## Mean                               -0.2830
## 3rd Qu.                            -0.1580
## Max.                               -0.0554
##         WALKING_UPSTAIRS.fBodyAcc.mean...Y
## Min.                             -4.05e-01
## 1st Qu.                          -2.52e-01
## Median                           -1.17e-01
## Mean                             -1.23e-01
## 3rd Qu.                           9.75e-05
## Max.                              2.63e-01
##         WALKING_UPSTAIRS.fBodyAcc.mean...Z
## Min.                                -0.561
## 1st Qu.                             -0.489
## Median                              -0.392
## Mean                                -0.362
## 3rd Qu.                             -0.314
## Max.                                 0.192
##         WALKING_UPSTAIRS.fBodyAcc.std...X
## Min.                               -0.438
## 1st Qu.                            -0.317
## Median                             -0.234
## Mean                               -0.210
## 3rd Qu.                            -0.126
## Max.                                0.132
##         WALKING_UPSTAIRS.fBodyAcc.std...Y
## Min.                              -0.3410
## 1st Qu.                           -0.1250
## Median                            -0.0346
## Mean                              -0.0140
## 3rd Qu.                            0.1070
## Max.                               0.3560
##         WALKING_UPSTAIRS.fBodyAcc.std...Z
## Min.                              -0.4190
## 1st Qu.                           -0.2830
## Median                            -0.2160
## Mean                              -0.1460
## 3rd Qu.                           -0.0945
## Max.                               0.6870
##         WALKING_UPSTAIRS.fBodyAcc.meanFreq...X
## Min.                                    -0.593
## 1st Qu.                                 -0.485
## Median                                  -0.435
## Mean                                    -0.429
## 3rd Qu.                                 -0.386
## Max.                                    -0.214
##         WALKING_UPSTAIRS.fBodyAcc.meanFreq...Y
## Min.                                   -0.3800
## 1st Qu.                                -0.2290
## Median                                 -0.1530
## Mean                                   -0.1620
## 3rd Qu.                                -0.0971
## Max.                                    0.0198
##         WALKING_UPSTAIRS.fBodyAcc.meanFreq...Z
## Min.                                   -0.5200
## 1st Qu.                                -0.2990
## Median                                 -0.2440
## Mean                                   -0.2560
## 3rd Qu.                                -0.1900
## Max.                                    0.0489
##         WALKING_UPSTAIRS.fBodyAccJerk.mean...X
## Min.                                   -0.6680
## 1st Qu.                                -0.4920
## Median                                 -0.3850
## Mean                                   -0.3770
## 3rd Qu.                                -0.2570
## Max.                                   -0.0382
##         WALKING_UPSTAIRS.fBodyAccJerk.mean...Y
## Min.                                   -0.6410
## 1st Qu.                                -0.4520
## Median                                 -0.3530
## Mean                                   -0.3510
## 3rd Qu.                                -0.2260
## Max.                                   -0.0258
##         WALKING_UPSTAIRS.fBodyAccJerk.mean...Z
## Min.                                    -0.793
## 1st Qu.                                 -0.683
## Median                                  -0.608
## Mean                                    -0.584
## 3rd Qu.                                 -0.521
## Max.                                    -0.264
##         WALKING_UPSTAIRS.fBodyAccJerk.std...X
## Min.                                  -0.6900
## 1st Qu.                               -0.4750
## Median                                -0.3940
## Mean                                  -0.3770
## 3rd Qu.                               -0.2470
## Max.                                  -0.0678
##         WALKING_UPSTAIRS.fBodyAccJerk.std...Y
## Min.                                  -0.6380
## 1st Qu.                               -0.4330
## Median                                -0.3570
## Mean                                  -0.3440
## 3rd Qu.                               -0.2570
## Max.                                  -0.0132
##         WALKING_UPSTAIRS.fBodyAccJerk.std...Z
## Min.                                   -0.831
## 1st Qu.                                -0.736
## Median                                 -0.673
## Mean                                   -0.656
## 3rd Qu.                                -0.580
## Max.                                   -0.391
##         WALKING_UPSTAIRS.fBodyAccJerk.meanFreq...X
## Min.                                       -0.5760
## 1st Qu.                                    -0.4230
## Median                                     -0.3690
## Mean                                       -0.3330
## 3rd Qu.                                    -0.2690
## Max.                                        0.0466
##         WALKING_UPSTAIRS.fBodyAccJerk.meanFreq...Y
## Min.                                        -0.602
## 1st Qu.                                     -0.509
## Median                                      -0.464
## Mean                                        -0.447
## 3rd Qu.                                     -0.371
## Max.                                        -0.270
##         WALKING_UPSTAIRS.fBodyAccJerk.meanFreq...Z
## Min.                                        -0.628
## 1st Qu.                                     -0.518
## Median                                      -0.443
## Mean                                        -0.433
## 3rd Qu.                                     -0.347
## Max.                                        -0.162
##         WALKING_UPSTAIRS.fBodyGyro.mean...X
## Min.                                 -0.592
## 1st Qu.                              -0.475
## Median                               -0.410
## Mean                                 -0.386
## 3rd Qu.                              -0.318
## Max.                                 -0.115
##         WALKING_UPSTAIRS.fBodyGyro.mean...Y
## Min.                                 -0.684
## 1st Qu.                              -0.591
## Median                               -0.517
## Mean                                 -0.453
## 3rd Qu.                              -0.339
## Max.                                  0.119
##         WALKING_UPSTAIRS.fBodyGyro.mean...Z
## Min.                                 -0.675
## 1st Qu.                              -0.408
## Median                               -0.326
## Mean                                 -0.286
## 3rd Qu.                              -0.172
## Max.                                  0.197
##         WALKING_UPSTAIRS.fBodyGyro.std...X
## Min.                                -0.603
## 1st Qu.                             -0.561
## Median                              -0.503
## Mean                                -0.491
## 3rd Qu.                             -0.444
## Max.                                -0.338
##         WALKING_UPSTAIRS.fBodyGyro.std...Y
## Min.                                -0.598
## 1st Qu.                             -0.483
## Median                              -0.384
## Mean                                -0.292
## 3rd Qu.                             -0.151
## Max.                                 0.646
##         WALKING_UPSTAIRS.fBodyGyro.std...Z
## Min.                                -0.730
## 1st Qu.                             -0.419
## Median                              -0.311
## Mean                                -0.283
## 3rd Qu.                             -0.210
## Max.                                 0.522
##         WALKING_UPSTAIRS.fBodyGyro.meanFreq...X
## Min.                                    -0.3900
## 1st Qu.                                 -0.2850
## Median                                  -0.2090
## Mean                                    -0.2080
## 3rd Qu.                                 -0.1450
## Max.                                     0.0112
##         WALKING_UPSTAIRS.fBodyGyro.meanFreq...Y
## Min.                                    -0.6670
## 1st Qu.                                 -0.4710
## Median                                  -0.2770
## Mean                                    -0.3110
## 3rd Qu.                                 -0.1370
## Max.                                    -0.0541
##         WALKING_UPSTAIRS.fBodyGyro.meanFreq...Z
## Min.                                    -0.5070
## 1st Qu.                                 -0.3480
## Median                                  -0.2480
## Mean                                    -0.2560
## 3rd Qu.                                 -0.1490
## Max.                                     0.0608
##         WALKING_UPSTAIRS.fBodyAccMag.mean..
## Min.                                 -0.528
## 1st Qu.                              -0.364
## Median                               -0.245
## Mean                                 -0.253
## 3rd Qu.                              -0.154
## Max.                                 -0.076
##         WALKING_UPSTAIRS.fBodyAccMag.std..
## Min.                                -0.536
## 1st Qu.                             -0.414
## Median                              -0.385
## Mean                                -0.359
## 3rd Qu.                             -0.306
## Max.                                -0.143
##         WALKING_UPSTAIRS.fBodyAccMag.meanFreq..
## Min.                                    -0.3120
## 1st Qu.                                 -0.1310
## Median                                  -0.0189
## Mean                                    -0.0415
## 3rd Qu.                                  0.0229
## Max.                                     0.2940
##         WALKING_UPSTAIRS.fBodyBodyAccJerkMag.mean..
## Min.                                        -0.6550
## 1st Qu.                                     -0.4390
## Median                                      -0.3380
## Mean                                        -0.3420
## 3rd Qu.                                     -0.2450
## Max.                                        -0.0458
##         WALKING_UPSTAIRS.fBodyBodyAccJerkMag.std..
## Min.                                        -0.703
## 1st Qu.                                     -0.496
## Median                                      -0.446
## Mean                                        -0.426
## 3rd Qu.                                     -0.376
## Max.                                        -0.151
##         WALKING_UPSTAIRS.fBodyBodyAccJerkMag.meanFreq..
## Min.                                          -0.089000
## 1st Qu.                                        0.000709
## Median                                         0.053500
## Mean                                           0.069200
## 3rd Qu.                                        0.122000
## Max.                                           0.297000
##         WALKING_UPSTAIRS.fBodyBodyGyroMag.mean..
## Min.                                     -0.6540
## 1st Qu.                                  -0.5550
## Median                                   -0.4800
## Mean                                     -0.4440
## 3rd Qu.                                  -0.3600
## Max.                                      0.0489
##         WALKING_UPSTAIRS.fBodyBodyGyroMag.std..
## Min.                                     -0.570
## 1st Qu.                                  -0.517
## Median                                   -0.443
## Mean                                     -0.380
## 3rd Qu.                                  -0.311
## Max.                                      0.237
##         WALKING_UPSTAIRS.fBodyBodyGyroMag.meanFreq..
## Min.                                         -0.4570
## 1st Qu.                                      -0.2740
## Median                                       -0.1390
## Mean                                         -0.1610
## 3rd Qu.                                      -0.0323
## Max.                                          0.0792
##         WALKING_UPSTAIRS.fBodyBodyGyroJerkMag.mean..
## Min.                                          -0.826
## 1st Qu.                                       -0.728
## Median                                        -0.669
## Mean                                          -0.652
## 3rd Qu.                                       -0.601
## Max.                                          -0.450
##         WALKING_UPSTAIRS.fBodyBodyGyroJerkMag.std..
## Min.                                         -0.861
## 1st Qu.                                      -0.780
## Median                                       -0.707
## Mean                                         -0.699
## 3rd Qu.                                      -0.638
## Max.                                         -0.456
##         WALKING_UPSTAIRS.fBodyBodyGyroJerkMag.meanFreq..
## Min.                                             -0.0714
## 1st Qu.                                           0.0469
## Median                                            0.0985
## Mean                                              0.1010
## 3rd Qu.                                           0.1550
## Max.                                              0.2640
##         WALKING_DOWNSTAIRS.tBodyAcc.mean...X
## Min.                                   0.263
## 1st Qu.                                0.282
## Median                                 0.290
## Mean                                   0.288
## 3rd Qu.                                0.294
## Max.                                   0.301
##         WALKING_DOWNSTAIRS.tBodyAcc.mean...Y
## Min.                                -0.02270
## 1st Qu.                             -0.01970
## Median                              -0.01710
## Mean                                -0.01630
## 3rd Qu.                             -0.01440
## Max.                                -0.00563
##         WALKING_DOWNSTAIRS.tBodyAcc.mean...Z
## Min.                                 -0.1340
## 1st Qu.                              -0.1100
## Median                               -0.1070
## Mean                                 -0.1060
## 3rd Qu.                              -0.1000
## Max.                                 -0.0892
##         WALKING_DOWNSTAIRS.tBodyAcc.std...X
## Min.                                -0.3030
## 1st Qu.                              0.0194
## Median                               0.1000
## Mean                                 0.1160
## 3rd Qu.                              0.2120
## Max.                                 0.6270
##         WALKING_DOWNSTAIRS.tBodyAcc.std...Y
## Min.                               -0.25400
## 1st Qu.                            -0.10100
## Median                             -0.00378
## Mean                                0.07070
## 3rd Qu.                             0.22600
## Max.                                0.61700
##         WALKING_DOWNSTAIRS.tBodyAcc.std...Z
## Min.                                -0.4790
## 1st Qu.                             -0.3250
## Median                              -0.2270
## Mean                                -0.1860
## 3rd Qu.                             -0.0796
## Max.                                 0.4520
##         WALKING_DOWNSTAIRS.tGravityAcc.mean...X
## Min.                                      0.816
## 1st Qu.                                   0.922
## Median                                    0.932
## Mean                                      0.925
## 3rd Qu.                                   0.942
## Max.                                      0.958
##         WALKING_DOWNSTAIRS.tGravityAcc.mean...Y
## Min.                                    -0.3570
## 1st Qu.                                 -0.2250
## Median                                  -0.1730
## Mean                                    -0.1700
## 3rd Qu.                                 -0.0874
## Max.                                    -0.0352
##         WALKING_DOWNSTAIRS.tGravityAcc.mean...Z
## Min.                                    -0.3930
## 1st Qu.                                 -0.1400
## Median                                  -0.0591
## Mean                                    -0.0503
## 3rd Qu.                                  0.0382
## Max.                                     0.2190
##         WALKING_DOWNSTAIRS.tGravityAcc.std...X
## Min.                                    -0.965
## 1st Qu.                                 -0.958
## Median                                  -0.951
## Mean                                    -0.949
## 3rd Qu.                                 -0.942
## Max.                                    -0.900
##         WALKING_DOWNSTAIRS.tGravityAcc.std...Y
## Min.                                    -0.955
## 1st Qu.                                 -0.942
## Median                                  -0.937
## Mean                                    -0.934
## 3rd Qu.                                 -0.927
## Max.                                    -0.909
##         WALKING_DOWNSTAIRS.tGravityAcc.std...Z
## Min.                                    -0.942
## 1st Qu.                                 -0.928
## Median                                  -0.917
## Mean                                    -0.912
## 3rd Qu.                                 -0.900
## Max.                                    -0.869
##         WALKING_DOWNSTAIRS.tBodyAccJerk.mean...X
## Min.                                      0.0429
## 1st Qu.                                   0.0727
## Median                                    0.0922
## Mean                                      0.0896
## 3rd Qu.                                   0.1030
## Max.                                      0.1300
##         WALKING_DOWNSTAIRS.tBodyAccJerk.mean...Y
## Min.                                   -0.038700
## 1st Qu.                                -0.011800
## Median                                 -0.000068
## Mean                                    0.000593
## 3rd Qu.                                 0.014200
## Max.                                    0.037500
##         WALKING_DOWNSTAIRS.tBodyAccJerk.mean...Z
## Min.                                    -0.03940
## 1st Qu.                                 -0.01370
## Median                                  -0.00970
## Mean                                    -0.00860
## 3rd Qu.                                 -0.00124
## Max.                                     0.02130
##         WALKING_DOWNSTAIRS.tBodyAccJerk.std...X
## Min.                                   -0.50200
## 1st Qu.                                -0.10300
## Median                                 -0.00793
## Mean                                   -0.01720
## 3rd Qu.                                 0.07320
## Max.                                    0.54400
##         WALKING_DOWNSTAIRS.tBodyAccJerk.std...Y
## Min.                                    -0.4470
## 1st Qu.                                 -0.1640
## Median                                  -0.0950
## Mean                                    -0.0621
## 3rd Qu.                                  0.0422
## Max.                                     0.3550
##         WALKING_DOWNSTAIRS.tBodyAccJerk.std...Z
## Min.                                     -0.711
## 1st Qu.                                  -0.494
## Median                                   -0.380
## Mean                                     -0.382
## 3rd Qu.                                  -0.317
## Max.                                      0.031
##         WALKING_DOWNSTAIRS.tBodyGyro.mean...X
## Min.                                  -0.2060
## 1st Qu.                               -0.1240
## Median                                -0.0995
## Mean                                  -0.0868
## 3rd Qu.                               -0.0577
## Max.                                   0.0678
##         WALKING_DOWNSTAIRS.tBodyGyro.mean...Y
## Min.                                  -0.1240
## 1st Qu.                               -0.0816
## Median                                -0.0589
## Mean                                  -0.0519
## 3rd Qu.                               -0.0244
## Max.                                   0.0275
##         WALKING_DOWNSTAIRS.tBodyGyro.mean...Z
## Min.                                   0.0163
## 1st Qu.                                0.0810
## Median                                 0.0927
## Mean                                   0.0946
## 3rd Qu.                                0.1140
## Max.                                   0.1640
##         WALKING_DOWNSTAIRS.tBodyGyro.std...X
## Min.                                  -0.502
## 1st Qu.                               -0.414
## Median                                -0.358
## Mean                                  -0.329
## 3rd Qu.                               -0.272
## Max.                                   0.268
##         WALKING_DOWNSTAIRS.tBodyGyro.std...Y
## Min.                                  -0.699
## 1st Qu.                               -0.484
## Median                                -0.382
## Mean                                  -0.336
## 3rd Qu.                               -0.214
## Max.                                   0.214
##         WALKING_DOWNSTAIRS.tBodyGyro.std...Z
## Min.                                  -0.498
## 1st Qu.                               -0.388
## Median                                -0.301
## Mean                                  -0.264
## 3rd Qu.                               -0.213
## Max.                                   0.356
##         WALKING_DOWNSTAIRS.tBodyGyroJerk.mean...X
## Min.                                      -0.1280
## 1st Qu.                                   -0.0940
## Median                                    -0.0733
## Mean                                      -0.0716
## 3rd Qu.                                   -0.0491
## Max.                                      -0.0221
##         WALKING_DOWNSTAIRS.tBodyGyroJerk.mean...Y
## Min.                                      -0.0768
## 1st Qu.                                   -0.0606
## Median                                    -0.0503
## Mean                                      -0.0515
## 3rd Qu.                                   -0.0392
## Max.                                      -0.0292
##         WALKING_DOWNSTAIRS.tBodyGyroJerk.mean...Z
## Min.                                      -0.0868
## 1st Qu.                                   -0.0650
## Median                                    -0.0558
## Mean                                      -0.0552
## 3rd Qu.                                   -0.0413
## Max.                                      -0.0270
##         WALKING_DOWNSTAIRS.tBodyGyroJerk.std...X
## Min.                                      -0.677
## 1st Qu.                                   -0.510
## Median                                    -0.414
## Mean                                      -0.377
## 3rd Qu.                                   -0.271
## Max.                                       0.179
##         WALKING_DOWNSTAIRS.tBodyGyroJerk.std...Y
## Min.                                      -0.817
## 1st Qu.                                   -0.606
## Median                                    -0.493
## Mean                                      -0.460
## 3rd Qu.                                   -0.308
## Max.                                       0.147
##         WALKING_DOWNSTAIRS.tBodyGyroJerk.std...Z
## Min.                                      -0.606
## 1st Qu.                                   -0.428
## Median                                    -0.366
## Mean                                      -0.316
## 3rd Qu.                                   -0.238
## Max.                                       0.193
##         WALKING_DOWNSTAIRS.tBodyAccMag.mean..
## Min.                                  -0.2940
## 1st Qu.                                0.0187
## Median                                 0.1200
## Mean                                   0.1160
## 3rd Qu.                                0.2060
## Max.                                   0.6450
##         WALKING_DOWNSTAIRS.tBodyAccMag.std..
## Min.                                 -0.2590
## 1st Qu.                               0.0276
## Median                                0.1340
## Mean                                  0.1270
## 3rd Qu.                               0.2150
## Max.                                  0.4280
##         WALKING_DOWNSTAIRS.tGravityAccMag.mean..
## Min.                                     -0.2940
## 1st Qu.                                   0.0187
## Median                                    0.1200
## Mean                                      0.1160
## 3rd Qu.                                   0.2060
## Max.                                      0.6450
##         WALKING_DOWNSTAIRS.tGravityAccMag.std..
## Min.                                    -0.2590
## 1st Qu.                                  0.0276
## Median                                   0.1340
## Mean                                     0.1270
## 3rd Qu.                                  0.2150
## Max.                                     0.4280
##         WALKING_DOWNSTAIRS.tBodyAccJerkMag.mean..
## Min.                                      -0.5000
## 1st Qu.                                   -0.1910
## Median                                    -0.1110
## Mean                                      -0.0976
## 3rd Qu.                                   -0.0228
## Max.                                       0.4340
##         WALKING_DOWNSTAIRS.tBodyAccJerkMag.std..
## Min.                                   -0.483000
## 1st Qu.                                -0.107000
## Median                                 -0.030000
## Mean                                    0.000918
## 3rd Qu.                                 0.107000
## Max.                                    0.451000
##         WALKING_DOWNSTAIRS.tBodyGyroMag.mean..
## Min.                                   -0.3810
## 1st Qu.                                -0.2160
## Median                                 -0.1630
## Mean                                   -0.1230
## 3rd Qu.                                -0.0701
## Max.                                    0.4180
##         WALKING_DOWNSTAIRS.tBodyGyroMag.std..
## Min.                                   -0.508
## 1st Qu.                                -0.349
## Median                                 -0.278
## Mean                                   -0.247
## 3rd Qu.                                -0.225
## Max.                                    0.238
##         WALKING_DOWNSTAIRS.tBodyGyroJerkMag.mean..
## Min.                                       -0.7020
## 1st Qu.                                    -0.5320
## Median                                     -0.4420
## Mean                                       -0.4090
## 3rd Qu.                                    -0.3280
## Max.                                        0.0876
##         WALKING_DOWNSTAIRS.tBodyGyroJerkMag.std..
## Min.                                      -0.7440
## 1st Qu.                                   -0.5950
## Median                                    -0.4610
## Mean                                      -0.4360
## 3rd Qu.                                   -0.2980
## Max.                                       0.0595
##         WALKING_DOWNSTAIRS.fBodyAcc.mean...X
## Min.                                 -0.3720
## 1st Qu.                              -0.0314
## Median                                0.0413
## Mean                                  0.0494
## 3rd Qu.                               0.1120
## Max.                                  0.5370
##         WALKING_DOWNSTAIRS.fBodyAcc.mean...Y
## Min.                                 -0.3090
## 1st Qu.                              -0.0803
## Median                                0.0053
## Mean                                  0.0683
## 3rd Qu.                               0.1850
## Max.                                  0.5240
##         WALKING_DOWNSTAIRS.fBodyAcc.mean...Z
## Min.                                  -0.556
## 1st Qu.                               -0.322
## Median                                -0.250
## Mean                                  -0.207
## 3rd Qu.                               -0.133
## Max.                                   0.281
##         WALKING_DOWNSTAIRS.fBodyAcc.std...X
## Min.                                 -0.286
## 1st Qu.                              -0.016
## Median                                0.125
## Mean                                  0.138
## 3rd Qu.                               0.264
## Max.                                  0.659
##         WALKING_DOWNSTAIRS.fBodyAcc.std...Y
## Min.                               -0.32300
## 1st Qu.                            -0.16900
## Median                             -0.07080
## Mean                                0.00189
## 3rd Qu.                             0.15600
## Max.                                0.56000
##         WALKING_DOWNSTAIRS.fBodyAcc.std...Z
## Min.                                 -0.513
## 1st Qu.                              -0.377
## Median                               -0.280
## Mean                                 -0.242
## 3rd Qu.                              -0.149
## Max.                                  0.428
##         WALKING_DOWNSTAIRS.fBodyAcc.meanFreq...X
## Min.                                      -0.555
## 1st Qu.                                   -0.447
## Median                                    -0.395
## Mean                                      -0.396
## 3rd Qu.                                   -0.335
## Max.                                      -0.201
##         WALKING_DOWNSTAIRS.fBodyAcc.meanFreq...Y
## Min.                                     -0.1730
## 1st Qu.                                  -0.0272
## Median                                    0.0123
## Mean                                      0.0045
## 3rd Qu.                                   0.0525
## Max.                                      0.2140
##         WALKING_DOWNSTAIRS.fBodyAcc.meanFreq...Z
## Min.                                     -0.1520
## 1st Qu.                                   0.0128
## Median                                    0.1050
## Mean                                      0.0979
## 3rd Qu.                                   0.1970
## Max.                                      0.3060
##         WALKING_DOWNSTAIRS.fBodyAccJerk.mean...X
## Min.                                     -0.5260
## 1st Qu.                                  -0.1600
## Median                                   -0.0380
## Mean                                     -0.0569
## 3rd Qu.                                   0.0270
## Max.                                      0.4740
##         WALKING_DOWNSTAIRS.fBodyAccJerk.mean...Y
## Min.                                    -0.46600
## 1st Qu.                                 -0.22100
## Median                                  -0.12400
## Mean                                    -0.10500
## 3rd Qu.                                 -0.00549
## Max.                                     0.27700
##         WALKING_DOWNSTAIRS.fBodyAccJerk.mean...Z
## Min.                                      -0.687
## 1st Qu.                                   -0.444
## Median                                    -0.345
## Mean                                      -0.326
## 3rd Qu.                                   -0.255
## Max.                                       0.158
##         WALKING_DOWNSTAIRS.fBodyAccJerk.std...X
## Min.                                    -0.5220
## 1st Qu.                                 -0.1300
## Median                                  -0.0721
## Mean                                    -0.0656
## 3rd Qu.                                  0.0331
## Max.                                     0.4770
##         WALKING_DOWNSTAIRS.fBodyAccJerk.std...Y
## Min.                                    -0.4650
## 1st Qu.                                 -0.1780
## Median                                  -0.1330
## Mean                                    -0.0803
## 3rd Qu.                                  0.0382
## Max.                                     0.3500
##         WALKING_DOWNSTAIRS.fBodyAccJerk.std...Z
## Min.                                    -0.7350
## 1st Qu.                                 -0.5470
## Median                                  -0.4170
## Mean                                    -0.4380
## 3rd Qu.                                 -0.3700
## Max.                                    -0.0847
##         WALKING_DOWNSTAIRS.fBodyAccJerk.meanFreq...X
## Min.                                          -0.521
## 1st Qu.                                       -0.364
## Median                                        -0.311
## Mean                                          -0.312
## 3rd Qu.                                       -0.242
## Max.                                          -0.144
##         WALKING_DOWNSTAIRS.fBodyAccJerk.meanFreq...Y
## Min.                                          -0.559
## 1st Qu.                                       -0.450
## Median                                        -0.397
## Mean                                          -0.384
## 3rd Qu.                                       -0.338
## Max.                                          -0.181
##         WALKING_DOWNSTAIRS.fBodyAccJerk.meanFreq...Z
## Min.                                          -0.480
## 1st Qu.                                       -0.311
## Median                                        -0.240
## Mean                                          -0.234
## 3rd Qu.                                       -0.144
## Max.                                           0.019
##         WALKING_DOWNSTAIRS.fBodyGyro.mean...X
## Min.                                   -0.489
## 1st Qu.                                -0.318
## Median                                 -0.234
## Mean                                   -0.211
## 3rd Qu.                                -0.134
## Max.                                    0.475
##         WALKING_DOWNSTAIRS.fBodyGyro.mean...Y
## Min.                                   -0.718
## 1st Qu.                                -0.460
## Median                                 -0.372
## Mean                                   -0.312
## 3rd Qu.                                -0.157
## Max.                                    0.329
##         WALKING_DOWNSTAIRS.fBodyGyro.mean...Z
## Min.                                  -0.4470
## 1st Qu.                               -0.2930
## Median                                -0.2060
## Mean                                  -0.1550
## 3rd Qu.                               -0.0475
## Max.                                   0.4920
##         WALKING_DOWNSTAIRS.fBodyGyro.std...X
## Min.                                  -0.515
## 1st Qu.                               -0.447
## Median                                -0.392
## Mean                                  -0.370
## 3rd Qu.                               -0.317
## Max.                                   0.197
##         WALKING_DOWNSTAIRS.fBodyGyro.std...Y
## Min.                                  -0.692
## 1st Qu.                               -0.514
## Median                                -0.376
## Mean                                  -0.360
## 3rd Qu.                               -0.251
## Max.                                   0.126
##         WALKING_DOWNSTAIRS.fBodyGyro.std...Z
## Min.                                  -0.622
## 1st Qu.                               -0.484
## Median                                -0.407
## Mean                                  -0.374
## 3rd Qu.                               -0.315
## Max.                                   0.183
##         WALKING_DOWNSTAIRS.fBodyGyro.meanFreq...X
## Min.                                      -0.3960
## 1st Qu.                                   -0.2400
## Median                                    -0.1760
## Mean                                      -0.1690
## 3rd Qu.                                   -0.1030
## Max.                                       0.0216
##         WALKING_DOWNSTAIRS.fBodyGyro.meanFreq...Y
## Min.                                     -0.47500
## 1st Qu.                                  -0.12900
## Median                                   -0.00454
## Mean                                     -0.03680
## 3rd Qu.                                   0.08170
## Max.                                      0.23200
##         WALKING_DOWNSTAIRS.fBodyGyro.meanFreq...Z
## Min.                                      -0.2530
## 1st Qu.                                   -0.1110
## Median                                    -0.0274
## Mean                                      -0.0131
## 3rd Qu.                                    0.0328
## Max.                                       0.3770
##         WALKING_DOWNSTAIRS.fBodyAccMag.mean..
## Min.                                  -0.2880
## 1st Qu.                                0.0623
## Median                                 0.1510
## Mean                                   0.1550
## 3rd Qu.                                0.2350
## Max.                                   0.5870
##         WALKING_DOWNSTAIRS.fBodyAccMag.std..
## Min.                                 -0.3590
## 1st Qu.                              -0.1710
## Median                               -0.0596
## Mean                                 -0.0678
## 3rd Qu.                               0.0175
## Max.                                  0.1790
##         WALKING_DOWNSTAIRS.fBodyAccMag.meanFreq..
## Min.                                      -0.1720
## 1st Qu.                                   -0.0465
## Median                                     0.0260
## Mean                                       0.0315
## 3rd Qu.                                    0.0993
## Max.                                       0.2290
##         WALKING_DOWNSTAIRS.fBodyBodyAccJerkMag.mean..
## Min.                                          -0.4720
## 1st Qu.                                       -0.0917
## Median                                         0.0100
## Mean                                           0.0186
## 3rd Qu.                                        0.1460
## Max.                                           0.5380
##         WALKING_DOWNSTAIRS.fBodyBodyAccJerkMag.std..
## Min.                                         -0.5020
## 1st Qu.                                      -0.1170
## Median                                       -0.0754
## Mean                                         -0.0325
## 3rd Qu.                                       0.1010
## Max.                                          0.3160
##         WALKING_DOWNSTAIRS.fBodyBodyAccJerkMag.meanFreq..
## Min.                                              -0.1250
## 1st Qu.                                           -0.0116
## Median                                             0.0227
## Mean                                               0.0247
## 3rd Qu.                                            0.0719
## Max.                                               0.1810
##         WALKING_DOWNSTAIRS.fBodyBodyGyroMag.mean..
## Min.                                        -0.605
## 1st Qu.                                     -0.380
## Median                                      -0.342
## Mean                                        -0.284
## 3rd Qu.                                     -0.210
## Max.                                         0.204
##         WALKING_DOWNSTAIRS.fBodyBodyGyroMag.std..
## Min.                                       -0.534
## 1st Qu.                                    -0.424
## Median                                     -0.390
## Mean                                       -0.358
## 3rd Qu.                                    -0.323
## Max.                                        0.032
##         WALKING_DOWNSTAIRS.fBodyBodyGyroMag.meanFreq..
## Min.                                           -0.1760
## 1st Qu.                                        -0.0481
## Median                                          0.0787
## Mean                                            0.0706
## 3rd Qu.                                         0.1640
## Max.                                            0.4030
##         WALKING_DOWNSTAIRS.fBodyBodyGyroJerkMag.mean..
## Min.                                           -0.7440
## 1st Qu.                                        -0.5820
## Median                                         -0.4700
## Mean                                           -0.4330
## 3rd Qu.                                        -0.2950
## Max.                                            0.0747
##         WALKING_DOWNSTAIRS.fBodyBodyGyroJerkMag.std..
## Min.                                          -0.7630
## 1st Qu.                                       -0.6320
## Median                                        -0.4880
## Mean                                          -0.4830
## 3rd Qu.                                       -0.3540
## Max.                                          -0.0399
##         WALKING_DOWNSTAIRS.fBodyBodyGyroJerkMag.meanFreq..
## Min.                                               -0.1010
## 1st Qu.                                             0.0538
## Median                                              0.0843
## Mean                                                0.1020
## 3rd Qu.                                             0.1750
## Max.                                                0.3400
##         SITTING.tBodyAcc.mean...X SITTING.tBodyAcc.mean...Y
## Min.                        0.248                  -0.02700
## 1st Qu.                     0.272                  -0.01500
## Median                      0.274                  -0.01380
## Mean                        0.273                  -0.01250
## 3rd Qu.                     0.277                  -0.00900
## Max.                        0.285                  -0.00131
##         SITTING.tBodyAcc.mean...Z SITTING.tBodyAcc.std...X
## Min.                      -0.1220                   -0.994
## 1st Qu.                   -0.1100                   -0.988
## Median                    -0.1060                   -0.983
## Mean                      -0.1050                   -0.983
## 3rd Qu.                   -0.1030                   -0.979
## Max.                      -0.0754                   -0.957
##         SITTING.tBodyAcc.std...Y SITTING.tBodyAcc.std...Z
## Min.                      -0.975                   -0.978
## 1st Qu.                   -0.951                   -0.960
## Median                    -0.936                   -0.940
## Mean                      -0.932                   -0.937
## 3rd Qu.                   -0.922                   -0.927
## Max.                      -0.857                   -0.832
##         SITTING.tGravityAcc.mean...X SITTING.tGravityAcc.mean...Y
## Min.                           0.581                     -0.11300
## 1st Qu.                        0.846                      0.00995
## Median                         0.904                      0.12500
## Mean                           0.882                      0.10700
## 3rd Qu.                        0.932                      0.20800
## Max.                           0.969                      0.36000
##         SITTING.tGravityAcc.mean...Z SITTING.tGravityAcc.std...X
## Min.                         -0.1360                      -0.994
## 1st Qu.                       0.0781                      -0.988
## Median                        0.1410                      -0.982
## Mean                          0.1530                      -0.979
## 3rd Qu.                       0.2490                      -0.972
## Max.                          0.4890                      -0.955
##         SITTING.tGravityAcc.std...Y SITTING.tGravityAcc.std...Z
## Min.                         -0.984                      -0.978
## 1st Qu.                      -0.968                      -0.963
## Median                       -0.958                      -0.954
## Mean                         -0.956                      -0.946
## 3rd Qu.                      -0.946                      -0.936
## Max.                         -0.904                      -0.869
##         SITTING.tBodyAccJerk.mean...X SITTING.tBodyAccJerk.mean...Y
## Min.                           0.0669                     -0.010900
## 1st Qu.                        0.0750                     -0.000518
## Median                         0.0761                      0.005790
## Mean                           0.0758                      0.004510
## 3rd Qu.                        0.0771                      0.009850
## Max.                           0.0808                      0.014800
##         SITTING.tBodyAccJerk.mean...Z SITTING.tBodyAccJerk.std...X
## Min.                         -0.02320                       -0.994
## 1st Qu.                      -0.00738                       -0.990
## Median                       -0.00180                       -0.987
## Mean                         -0.00247                       -0.984
## 3rd Qu.                       0.00201                       -0.980
## Max.                          0.01620                       -0.965
##         SITTING.tBodyAccJerk.std...Y SITTING.tBodyAccJerk.std...Z
## Min.                          -0.989                       -0.991
## 1st Qu.                       -0.982                       -0.988
## Median                        -0.979                       -0.985
## Mean                          -0.973                       -0.982
## 3rd Qu.                       -0.965                       -0.976
## Max.                          -0.945                       -0.959
##         SITTING.tBodyGyro.mean...X SITTING.tBodyGyro.mean...Y
## Min.                       -0.0547                    -0.0955
## 1st Qu.                    -0.0431                    -0.0802
## Median                     -0.0382                    -0.0749
## Mean                       -0.0393                    -0.0725
## 3rd Qu.                    -0.0359                    -0.0670
## Max.                       -0.0199                    -0.0336
##         SITTING.tBodyGyro.mean...Z SITTING.tBodyGyro.std...X
## Min.                        0.0259                    -0.992
## 1st Qu.                     0.0712                    -0.988
## Median                      0.0806                    -0.985
## Mean                        0.0771                    -0.980
## 3rd Qu.                     0.0854                    -0.977
## Max.                        0.1010                    -0.942
##         SITTING.tBodyGyro.std...Y SITTING.tBodyGyro.std...Z
## Min.                       -0.988                    -0.982
## 1st Qu.                    -0.979                    -0.967
## Median                     -0.969                    -0.960
## Mean                       -0.966                    -0.957
## 3rd Qu.                    -0.957                    -0.946
## Max.                       -0.919                    -0.926
##         SITTING.tBodyGyroJerk.mean...X SITTING.tBodyGyroJerk.mean...Y
## Min.                           -0.1040                        -0.0467
## 1st Qu.                        -0.0960                        -0.0418
## Median                         -0.0953                        -0.0407
## Mean                           -0.0954                        -0.0408
## 3rd Qu.                        -0.0937                        -0.0396
## Max.                           -0.0890                        -0.0334
##         SITTING.tBodyGyroJerk.mean...Z SITTING.tBodyGyroJerk.std...X
## Min.                           -0.0591                        -0.996
## 1st Qu.                        -0.0522                        -0.993
## Median                         -0.0500                        -0.990
## Mean                           -0.0504                        -0.985
## 3rd Qu.                        -0.0474                        -0.979
## Max.                           -0.0436                        -0.944
##         SITTING.tBodyGyroJerk.std...Y SITTING.tBodyGyroJerk.std...Z
## Min.                           -0.995                        -0.994
## 1st Qu.                        -0.992                        -0.990
## Median                         -0.989                        -0.987
## Mean                           -0.986                        -0.983
## 3rd Qu.                        -0.981                        -0.980
## Max.                           -0.962                        -0.959
##         SITTING.tBodyAccMag.mean.. SITTING.tBodyAccMag.std..
## Min.                        -0.984                    -0.982
## 1st Qu.                     -0.966                    -0.953
## Median                      -0.957                    -0.939
## Mean                        -0.953                    -0.937
## 3rd Qu.                     -0.945                    -0.926
## Max.                        -0.893                    -0.864
##         SITTING.tGravityAccMag.mean.. SITTING.tGravityAccMag.std..
## Min.                           -0.984                       -0.982
## 1st Qu.                        -0.966                       -0.953
## Median                         -0.957                       -0.939
## Mean                           -0.953                       -0.937
## 3rd Qu.                        -0.945                       -0.926
## Max.                           -0.893                       -0.864
##         SITTING.tBodyAccJerkMag.mean.. SITTING.tBodyAccJerkMag.std..
## Min.                            -0.993                        -0.991
## 1st Qu.                         -0.988                        -0.986
## Median                          -0.986                        -0.984
## Mean                            -0.982                        -0.978
## 3rd Qu.                         -0.977                        -0.971
## Max.                            -0.963                        -0.948
##         SITTING.tBodyGyroMag.mean.. SITTING.tBodyGyroMag.std..
## Min.                         -0.978                     -0.981
## 1st Qu.                      -0.957                     -0.965
## Median                       -0.945                     -0.952
## Mean                         -0.945                     -0.950
## 3rd Qu.                      -0.935                     -0.935
## Max.                         -0.898                     -0.898
##         SITTING.tBodyGyroJerkMag.mean.. SITTING.tBodyGyroJerkMag.std..
## Min.                             -0.996                         -0.995
## 1st Qu.                          -0.993                         -0.991
## Median                           -0.991                         -0.988
## Mean                             -0.987                         -0.984
## 3rd Qu.                          -0.982                         -0.977
## Max.                             -0.963                         -0.950
##         SITTING.fBodyAcc.mean...X SITTING.fBodyAcc.mean...Y
## Min.                       -0.994                    -0.977
## 1st Qu.                    -0.988                    -0.960
## Median                     -0.982                    -0.946
## Mean                       -0.983                    -0.946
## 3rd Qu.                    -0.979                    -0.936
## Max.                       -0.959                    -0.892
##         SITTING.fBodyAcc.mean...Z SITTING.fBodyAcc.std...X
## Min.                       -0.983                   -0.995
## 1st Qu.                    -0.971                   -0.989
## Median                     -0.959                   -0.984
## Mean                       -0.956                   -0.983
## 3rd Qu.                    -0.947                   -0.979
## Max.                       -0.892                   -0.957
##         SITTING.fBodyAcc.std...Y SITTING.fBodyAcc.std...Z
## Min.                      -0.975                   -0.976
## 1st Qu.                   -0.949                   -0.957
## Median                    -0.932                   -0.935
## Mean                      -0.930                   -0.932
## 3rd Qu.                   -0.918                   -0.925
## Max.                      -0.850                   -0.818
##         SITTING.fBodyAcc.meanFreq...X SITTING.fBodyAcc.meanFreq...Y
## Min.                          -0.3150                      -0.12000
## 1st Qu.                       -0.0774                       0.00177
## Median                        -0.0248                       0.07740
## Mean                          -0.0411                       0.06240
## 3rd Qu.                        0.0221                       0.12500
## Max.                           0.0879                       0.17400
##         SITTING.fBodyAcc.meanFreq...Z SITTING.fBodyAccJerk.mean...X
## Min.                         -0.13200                        -0.995
## 1st Qu.                       0.00958                        -0.991
## Median                        0.08830                        -0.987
## Mean                          0.07910                        -0.985
## 3rd Qu.                       0.14600                        -0.981
## Max.                          0.24300                        -0.966
##         SITTING.fBodyAccJerk.mean...Y SITTING.fBodyAccJerk.mean...Z
## Min.                           -0.988                        -0.989
## 1st Qu.                        -0.982                        -0.986
## Median                         -0.979                        -0.982
## Mean                           -0.973                        -0.979
## 3rd Qu.                        -0.965                        -0.973
## Max.                           -0.944                        -0.954
##         SITTING.fBodyAccJerk.std...X SITTING.fBodyAccJerk.std...Y
## Min.                          -0.995                       -0.990
## 1st Qu.                       -0.991                       -0.983
## Median                        -0.988                       -0.981
## Mean                          -0.986                       -0.975
## 3rd Qu.                       -0.982                       -0.969
## Max.                          -0.967                       -0.947
##         SITTING.fBodyAccJerk.std...Z SITTING.fBodyAccJerk.meanFreq...X
## Min.                          -0.991                           0.00357
## 1st Qu.                       -0.989                           0.14100
## Median                        -0.986                           0.19400
## Mean                          -0.983                           0.18400
## 3rd Qu.                       -0.978                           0.23400
## Max.                          -0.962                           0.30600
##         SITTING.fBodyAccJerk.meanFreq...Y
## Min.                            -0.272000
## 1st Qu.                         -0.098000
## Median                          -0.052200
## Mean                            -0.059700
## 3rd Qu.                         -0.000488
## Max.                             0.088500
##         SITTING.fBodyAccJerk.meanFreq...Z SITTING.fBodyGyro.mean...X
## Min.                             -0.26800                     -0.990
## 1st Qu.                          -0.05360                     -0.986
## Median                            0.01540                     -0.982
## Mean                              0.00112                     -0.976
## 3rd Qu.                           0.05780                     -0.971
## Max.                              0.11800                     -0.940
##         SITTING.fBodyGyro.mean...Y SITTING.fBodyGyro.mean...Z
## Min.                        -0.990                     -0.983
## 1st Qu.                     -0.982                     -0.970
## Median                      -0.976                     -0.961
## Mean                        -0.972                     -0.960
## 3rd Qu.                     -0.963                     -0.951
## Max.                        -0.940                     -0.934
##         SITTING.fBodyGyro.std...X SITTING.fBodyGyro.std...Y
## Min.                       -0.993                    -0.987
## 1st Qu.                    -0.989                    -0.978
## Median                     -0.985                    -0.966
## Mean                       -0.981                    -0.963
## 3rd Qu.                    -0.978                    -0.953
## Max.                       -0.943                    -0.911
##         SITTING.fBodyGyro.std...Z SITTING.fBodyGyro.meanFreq...X
## Min.                       -0.983                       -0.12800
## 1st Qu.                    -0.969                       -0.00712
## Median                     -0.962                        0.09480
## Mean                       -0.960                        0.06340
## 3rd Qu.                    -0.950                        0.12400
## Max.                       -0.931                        0.21400
##         SITTING.fBodyGyro.meanFreq...Y SITTING.fBodyGyro.meanFreq...Z
## Min.                           -0.3950                        -0.1730
## 1st Qu.                        -0.3120                        -0.0750
## Median                         -0.1900                        -0.0246
## Mean                           -0.2130                        -0.0152
## 3rd Qu.                        -0.1510                         0.0363
## Max.                            0.0677                         0.2070
##         SITTING.fBodyAccMag.mean.. SITTING.fBodyAccMag.std..
## Min.                        -0.985                    -0.982
## 1st Qu.                     -0.962                    -0.955
## Median                      -0.953                    -0.942
## Mean                        -0.951                    -0.940
## 3rd Qu.                     -0.944                    -0.929
## Max.                        -0.898                    -0.869
##         SITTING.fBodyAccMag.meanFreq.. SITTING.fBodyBodyAccJerkMag.mean..
## Min.                           -0.0806                             -0.991
## 1st Qu.                         0.0284                             -0.986
## Median                          0.1240                             -0.984
## Mean                            0.1110                             -0.978
## 3rd Qu.                         0.1980                             -0.971
## Max.                            0.3050                             -0.948
##         SITTING.fBodyBodyAccJerkMag.std..
## Min.                               -0.991
## 1st Qu.                            -0.987
## Median                             -0.982
## Mean                               -0.977
## 3rd Qu.                            -0.971
## Max.                               -0.947
##         SITTING.fBodyBodyAccJerkMag.meanFreq..
## Min.                                    0.0975
## 1st Qu.                                 0.2280
## Median                                  0.2830
## Mean                                    0.2780
## 3rd Qu.                                 0.3340
## Max.                                    0.4590
##         SITTING.fBodyBodyGyroMag.mean.. SITTING.fBodyBodyGyroMag.std..
## Min.                             -0.987                         -0.981
## 1st Qu.                          -0.976                         -0.964
## Median                           -0.965                         -0.953
## Mean                             -0.963                         -0.950
## 3rd Qu.                          -0.953                         -0.936
## Max.                             -0.930                         -0.896
##         SITTING.fBodyBodyGyroMag.meanFreq..
## Min.                               -0.20000
## 1st Qu.                            -0.14600
## Median                             -0.09750
## Mean                               -0.07740
## 3rd Qu.                            -0.00164
## Max.                                0.12500
##         SITTING.fBodyBodyGyroJerkMag.mean..
## Min.                                 -0.995
## 1st Qu.                              -0.992
## Median                               -0.989
## Mean                                 -0.985
## 3rd Qu.                              -0.979
## Max.                                 -0.952
##         SITTING.fBodyBodyGyroJerkMag.std..
## Min.                                -0.995
## 1st Qu.                             -0.991
## Median                              -0.987
## Mean                                -0.984
## 3rd Qu.                             -0.977
## Max.                                -0.951
##         SITTING.fBodyBodyGyroJerkMag.meanFreq.. STANDING.tBodyAcc.mean...X
## Min.                                     0.0025                      0.277
## 1st Qu.                                  0.0882                      0.278
## Median                                   0.1760                      0.279
## Mean                                     0.1740                      0.279
## 3rd Qu.                                  0.2310                      0.280
## Max.                                     0.3590                      0.283
##         STANDING.tBodyAcc.mean...Y STANDING.tBodyAcc.mean...Z
## Min.                       -0.0200                    -0.1120
## 1st Qu.                    -0.0173                    -0.1090
## Median                     -0.0166                    -0.1080
## Mean                       -0.0161                    -0.1060
## 3rd Qu.                    -0.0155                    -0.1040
## Max.                       -0.0070                    -0.0953
##         STANDING.tBodyAcc.std...X STANDING.tBodyAcc.std...Y
## Min.                       -0.996                    -0.973
## 1st Qu.                    -0.991                    -0.955
## Median                     -0.986                    -0.939
## Mean                       -0.984                    -0.932
## 3rd Qu.                    -0.978                    -0.922
## Max.                       -0.967                    -0.862
##         STANDING.tBodyAcc.std...Z STANDING.tGravityAcc.mean...X
## Min.                       -0.986                         0.875
## 1st Qu.                    -0.962                         0.937
## Median                     -0.942                         0.951
## Mean                       -0.939                         0.943
## 3rd Qu.                    -0.920                         0.960
## Max.                       -0.869                         0.975
##         STANDING.tGravityAcc.mean...Y STANDING.tGravityAcc.mean...Z
## Min.                          -0.3700                      -0.33800
## 1st Qu.                       -0.2380                      -0.05230
## Median                        -0.1810                       0.01370
## Mean                          -0.1780                      -0.00746
## 3rd Qu.                       -0.1050                       0.06930
## Max.                          -0.0104                       0.20100
##         STANDING.tGravityAcc.std...X STANDING.tGravityAcc.std...Y
## Min.                          -0.997                       -0.985
## 1st Qu.                       -0.993                       -0.979
## Median                        -0.989                       -0.971
## Mean                          -0.988                       -0.969
## 3rd Qu.                       -0.985                       -0.966
## Max.                          -0.972                       -0.918
##         STANDING.tGravityAcc.std...Z STANDING.tBodyAccJerk.mean...X
## Min.                          -0.989                         0.0721
## 1st Qu.                       -0.967                         0.0747
## Median                        -0.955                         0.0752
## Mean                          -0.952                         0.0751
## 3rd Qu.                       -0.941                         0.0754
## Max.                          -0.899                         0.0810
##         STANDING.tBodyAccJerk.mean...Y STANDING.tBodyAccJerk.mean...Z
## Min.                          -0.00653                       -0.02120
## 1st Qu.                        0.00764                       -0.00651
## Median                         0.00998                       -0.00473
## Mean                           0.00870                       -0.00476
## 3rd Qu.                        0.01140                       -0.00191
## Max.                           0.01310                        0.00322
##         STANDING.tBodyAccJerk.std...X STANDING.tBodyAccJerk.std...Y
## Min.                           -0.995                        -0.987
## 1st Qu.                        -0.989                        -0.976
## Median                         -0.981                        -0.968
## Mean                           -0.980                        -0.964
## 3rd Qu.                        -0.972                        -0.953
## Max.                           -0.957                        -0.931
##         STANDING.tBodyAccJerk.std...Z STANDING.tBodyGyro.mean...X
## Min.                           -0.992                     -0.0327
## 1st Qu.                        -0.987                     -0.0292
## Median                         -0.980                     -0.0272
## Mean                           -0.979                     -0.0269
## 3rd Qu.                        -0.972                     -0.0247
## Max.                           -0.959                     -0.0192
##         STANDING.tBodyGyro.mean...Y STANDING.tBodyGyro.mean...Z
## Min.                        -0.0877                      0.0637
## 1st Qu.                     -0.0737                      0.0750
## Median                      -0.0691                      0.0796
## Mean                        -0.0674                      0.0803
## 3rd Qu.                     -0.0622                      0.0854
## Max.                        -0.0280                      0.1030
##         STANDING.tBodyGyro.std...X STANDING.tBodyGyro.std...Y
## Min.                        -0.987                     -0.994
## 1st Qu.                     -0.973                     -0.979
## Median                      -0.952                     -0.966
## Mean                        -0.945                     -0.961
## 3rd Qu.                     -0.919                     -0.946
## Max.                        -0.884                     -0.904
##         STANDING.tBodyGyro.std...Z STANDING.tBodyGyroJerk.mean...X
## Min.                        -0.986                         -0.1060
## 1st Qu.                     -0.974                         -0.1010
## Median                      -0.962                         -0.0996
## Mean                        -0.956                         -0.0996
## 3rd Qu.                     -0.947                         -0.0983
## Max.                        -0.907                         -0.0902
##         STANDING.tBodyGyroJerk.mean...Y STANDING.tBodyGyroJerk.mean...Z
## Min.                            -0.0485                         -0.0584
## 1st Qu.                         -0.0432                         -0.0545
## Median                          -0.0420                         -0.0524
## Mean                            -0.0423                         -0.0520
## 3rd Qu.                         -0.0409                         -0.0510
## Max.                            -0.0372                         -0.0417
##         STANDING.tBodyGyroJerk.std...X STANDING.tBodyGyroJerk.std...Y
## Min.                            -0.993                         -0.996
## 1st Qu.                         -0.981                         -0.989
## Median                          -0.972                         -0.981
## Mean                            -0.967                         -0.980
## 3rd Qu.                         -0.950                         -0.973
## Max.                            -0.922                         -0.948
##         STANDING.tBodyGyroJerk.std...Z STANDING.tBodyAccMag.mean..
## Min.                            -0.993                      -0.985
## 1st Qu.                         -0.986                      -0.971
## Median                          -0.980                      -0.956
## Mean                            -0.977                      -0.954
## 3rd Qu.                         -0.970                      -0.943
## Max.                            -0.945                      -0.906
##         STANDING.tBodyAccMag.std.. STANDING.tGravityAccMag.mean..
## Min.                        -0.982                         -0.985
## 1st Qu.                     -0.965                         -0.971
## Median                      -0.948                         -0.956
## Mean                        -0.946                         -0.954
## 3rd Qu.                     -0.935                         -0.943
## Max.                        -0.880                         -0.906
##         STANDING.tGravityAccMag.std.. STANDING.tBodyAccJerkMag.mean..
## Min.                           -0.982                          -0.992
## 1st Qu.                        -0.965                          -0.986
## Median                         -0.948                          -0.978
## Mean                           -0.946                          -0.977
## 3rd Qu.                        -0.935                          -0.969
## Max.                           -0.880                          -0.957
##         STANDING.tBodyAccJerkMag.std.. STANDING.tBodyGyroMag.mean..
## Min.                            -0.993                       -0.981
## 1st Qu.                         -0.983                       -0.966
## Median                          -0.974                       -0.945
## Mean                            -0.971                       -0.941
## 3rd Qu.                         -0.958                       -0.923
## Max.                            -0.938                       -0.884
##         STANDING.tBodyGyroMag.std.. STANDING.tBodyGyroJerkMag.mean..
## Min.                         -0.979                           -0.995
## 1st Qu.                      -0.960                           -0.988
## Median                       -0.935                           -0.980
## Mean                         -0.928                           -0.978
## 3rd Qu.                      -0.903                           -0.970
## Max.                         -0.844                           -0.948
##         STANDING.tBodyGyroJerkMag.std.. STANDING.fBodyAcc.mean...X
## Min.                             -0.995                     -0.995
## 1st Qu.                          -0.984                     -0.990
## Median                           -0.976                     -0.984
## Mean                             -0.973                     -0.981
## 3rd Qu.                          -0.964                     -0.973
## Max.                             -0.926                     -0.960
##         STANDING.fBodyAcc.mean...Y STANDING.fBodyAcc.mean...Z
## Min.                        -0.977                     -0.988
## 1st Qu.                     -0.961                     -0.974
## Median                      -0.949                     -0.956
## Mean                        -0.942                     -0.957
## 3rd Qu.                     -0.929                     -0.942
## Max.                        -0.890                     -0.915
##         STANDING.fBodyAcc.std...X STANDING.fBodyAcc.std...Y
## Min.                       -0.997                    -0.972
## 1st Qu.                    -0.992                    -0.954
## Median                     -0.988                    -0.938
## Mean                       -0.986                    -0.930
## 3rd Qu.                    -0.980                    -0.922
## Max.                       -0.970                    -0.857
##         STANDING.fBodyAcc.std...Z STANDING.fBodyAcc.meanFreq...X
## Min.                       -0.986                        -0.2460
## 1st Qu.                    -0.958                        -0.0285
## Median                     -0.938                         0.0280
## Mean                       -0.935                         0.0172
## 3rd Qu.                    -0.914                         0.0815
## Max.                       -0.858                         0.1590
##         STANDING.fBodyAcc.meanFreq...Y STANDING.fBodyAcc.meanFreq...Z
## Min.                           -0.2380                       -0.12600
## 1st Qu.                        -0.0915                       -0.00165
## Median                         -0.0215                        0.02770
## Mean                           -0.0338                        0.05560
## 3rd Qu.                         0.0287                        0.10300
## Max.                            0.1170                        0.29200
##         STANDING.fBodyAccJerk.mean...X STANDING.fBodyAccJerk.mean...Y
## Min.                            -0.995                         -0.986
## 1st Qu.                         -0.989                         -0.976
## Median                          -0.981                         -0.968
## Mean                            -0.980                         -0.964
## 3rd Qu.                         -0.972                         -0.952
## Max.                            -0.958                         -0.931
##         STANDING.fBodyAccJerk.mean...Z STANDING.fBodyAccJerk.std...X
## Min.                            -0.991                        -0.995
## 1st Qu.                         -0.985                        -0.990
## Median                          -0.976                        -0.982
## Mean                            -0.976                        -0.981
## 3rd Qu.                         -0.968                        -0.975
## Max.                            -0.953                        -0.961
##         STANDING.fBodyAccJerk.std...Y STANDING.fBodyAccJerk.std...Z
## Min.                           -0.988                        -0.992
## 1st Qu.                        -0.978                        -0.988
## Median                         -0.970                        -0.982
## Mean                           -0.966                        -0.981
## 3rd Qu.                        -0.956                        -0.975
## Max.                           -0.936                        -0.964
##         STANDING.fBodyAccJerk.meanFreq...X
## Min.                               -0.0235
## 1st Qu.                             0.1520
## Median                              0.2170
## Mean                                0.2020
## 3rd Qu.                             0.2680
## Max.                                0.3310
##         STANDING.fBodyAccJerk.meanFreq...Y
## Min.                               -0.3510
## 1st Qu.                            -0.1880
## Median                             -0.1210
## Mean                               -0.1320
## 3rd Qu.                            -0.0577
## Max.                                0.0740
##         STANDING.fBodyAccJerk.meanFreq...Z STANDING.fBodyGyro.mean...X
## Min.                              -0.12800                      -0.986
## 1st Qu.                           -0.06700                      -0.969
## Median                             0.00851                      -0.954
## Mean                               0.00750                      -0.943
## 3rd Qu.                            0.07070                      -0.917
## Max.                               0.14900                      -0.880
##         STANDING.fBodyGyro.mean...Y STANDING.fBodyGyro.mean...Z
## Min.                         -0.994                      -0.986
## 1st Qu.                      -0.982                      -0.974
## Median                       -0.971                      -0.964
## Mean                         -0.965                      -0.958
## 3rd Qu.                      -0.951                      -0.945
## Max.                         -0.911                      -0.907
##         STANDING.fBodyGyro.std...X STANDING.fBodyGyro.std...Y
## Min.                        -0.987                     -0.994
## 1st Qu.                     -0.974                     -0.978
## Median                      -0.954                     -0.964
## Mean                        -0.946                     -0.959
## 3rd Qu.                     -0.921                     -0.943
## Max.                        -0.884                     -0.901
##         STANDING.fBodyGyro.std...Z STANDING.fBodyGyro.meanFreq...X
## Min.                        -0.987                          -0.394
## 1st Qu.                     -0.976                          -0.288
## Median                      -0.964                          -0.232
## Mean                        -0.960                          -0.226
## 3rd Qu.                     -0.951                          -0.157
## Max.                        -0.915                          -0.105
##         STANDING.fBodyGyro.meanFreq...Y STANDING.fBodyGyro.meanFreq...Z
## Min.                             -0.374                         -0.2490
## 1st Qu.                          -0.297                         -0.1740
## Median                           -0.197                         -0.0893
## Mean                             -0.212                         -0.0933
## 3rd Qu.                          -0.153                         -0.0219
## Max.                              0.119                          0.1010
##         STANDING.fBodyAccMag.mean.. STANDING.fBodyAccMag.std..
## Min.                         -0.985                     -0.982
## 1st Qu.                      -0.972                     -0.967
## Median                       -0.959                     -0.950
## Mean                         -0.955                     -0.949
## 3rd Qu.                      -0.945                     -0.939
## Max.                         -0.905                     -0.887
##         STANDING.fBodyAccMag.meanFreq..
## Min.                            -0.1120
## 1st Qu.                         -0.0259
## Median                           0.0458
## Mean                             0.0492
## 3rd Qu.                          0.1070
## Max.                             0.2850
##         STANDING.fBodyBodyAccJerkMag.mean..
## Min.                                 -0.993
## 1st Qu.                              -0.983
## Median                               -0.973
## Mean                                 -0.971
## 3rd Qu.                              -0.957
## Max.                                 -0.940
##         STANDING.fBodyBodyAccJerkMag.std..
## Min.                                -0.993
## 1st Qu.                             -0.982
## Median                              -0.974
## Mean                                -0.970
## 3rd Qu.                             -0.957
## Max.                                -0.936
##         STANDING.fBodyBodyAccJerkMag.meanFreq..
## Min.                                   -0.00613
## 1st Qu.                                 0.19300
## Median                                  0.27600
## Mean                                    0.24900
## 3rd Qu.                                 0.30800
## Max.                                    0.42700
##         STANDING.fBodyBodyGyroMag.mean.. STANDING.fBodyBodyGyroMag.std..
## Min.                              -0.985                          -0.978
## 1st Qu.                           -0.971                          -0.961
## Median                            -0.957                          -0.936
## Mean                              -0.947                          -0.930
## 3rd Qu.                           -0.927                          -0.903
## Max.                              -0.879                          -0.849
##         STANDING.fBodyBodyGyroMag.meanFreq..
## Min.                                 -0.3830
## 1st Qu.                              -0.2420
## Median                               -0.1720
## Mean                                 -0.1820
## 3rd Qu.                              -0.1160
## Max.                                 -0.0286
##         STANDING.fBodyBodyGyroJerkMag.mean..
## Min.                                  -0.995
## 1st Qu.                               -0.985
## Median                                -0.977
## Mean                                  -0.975
## 3rd Qu.                               -0.965
## Max.                                  -0.930
##         STANDING.fBodyBodyGyroJerkMag.std..
## Min.                                 -0.995
## 1st Qu.                              -0.983
## Median                               -0.977
## Mean                                 -0.973
## 3rd Qu.                              -0.965
## Max.                                 -0.927
##         STANDING.fBodyBodyGyroJerkMag.meanFreq.. LAYING.tBodyAcc.mean...X
## Min.                                     -0.1830                    0.222
## 1st Qu.                                   0.0141                    0.260
## Median                                    0.0883                    0.273
## Mean                                      0.0830                    0.268
## 3rd Qu.                                   0.1720                    0.278
## Max.                                      0.3340                    0.289
##         LAYING.tBodyAcc.mean...Y LAYING.tBodyAcc.mean...Z
## Min.                     -0.0405                  -0.1330
## 1st Qu.                  -0.0194                  -0.1090
## Median                   -0.0178                  -0.1070
## Mean                     -0.0185                  -0.1070
## 3rd Qu.                  -0.0168                  -0.1040
## Max.                     -0.0103                  -0.0868
##         LAYING.tBodyAcc.std...X LAYING.tBodyAcc.std...Y
## Min.                     -0.985                  -0.990
## 1st Qu.                  -0.974                  -0.973
## Median                   -0.967                  -0.953
## Mean                     -0.960                  -0.942
## 3rd Qu.                  -0.949                  -0.937
## Max.                     -0.909                  -0.692
##         LAYING.tBodyAcc.std...Z LAYING.tGravityAcc.mean...X
## Min.                     -0.988                      -0.680
## 1st Qu.                  -0.973                      -0.482
## Median                   -0.961                      -0.399
## Mean                     -0.947                      -0.374
## 3rd Qu.                  -0.944                      -0.226
## Max.                     -0.717                      -0.135
##         LAYING.tGravityAcc.mean...Y LAYING.tGravityAcc.mean...Z
## Min.                         -0.139                     -0.0369
## 1st Qu.                       0.573                      0.3680
## Median                        0.713                      0.6100
## Mean                          0.622                      0.5510
## 3rd Qu.                       0.806                      0.7600
## Max.                          0.957                      0.9580
##         LAYING.tGravityAcc.std...X LAYING.tGravityAcc.std...Y
## Min.                        -0.983                     -0.994
## 1st Qu.                     -0.963                     -0.988
## Median                      -0.951                     -0.976
## Mean                        -0.942                     -0.963
## 3rd Qu.                     -0.924                     -0.963
## Max.                        -0.830                     -0.644
##         LAYING.tGravityAcc.std...Z LAYING.tBodyAccJerk.mean...X
## Min.                        -0.991                       0.0719
## 1st Qu.                     -0.982                       0.0768
## Median                      -0.970                       0.0809
## Mean                        -0.952                       0.0824
## 3rd Qu.                     -0.954                       0.0875
## Max.                        -0.610                       0.0981
##         LAYING.tBodyAccJerk.mean...Y LAYING.tBodyAccJerk.mean...Z
## Min.                        -0.00832                    -0.032400
## 1st Qu.                      0.00717                    -0.006380
## Median                       0.01180                    -0.003730
## Mean                         0.01100                    -0.004900
## 3rd Qu.                      0.01310                    -0.000452
## Max.                         0.02850                     0.010800
##         LAYING.tBodyAccJerk.std...X LAYING.tBodyAccJerk.std...Y
## Min.                         -0.992                      -0.990
## 1st Qu.                      -0.986                      -0.982
## Median                       -0.982                      -0.973
## Mean                         -0.980                      -0.970
## 3rd Qu.                      -0.974                      -0.965
## Max.                         -0.958                      -0.924
##         LAYING.tBodyAccJerk.std...Z LAYING.tBodyGyro.mean...X
## Min.                         -0.993                  -0.03120
## 1st Qu.                      -0.985                  -0.02160
## Median                       -0.982                  -0.01720
## Mean                         -0.979                  -0.01600
## 3rd Qu.                      -0.973                  -0.01190
## Max.                         -0.955                   0.00535
##         LAYING.tBodyGyro.mean...Y LAYING.tBodyGyro.mean...Z
## Min.                      -0.1590                    0.0936
## 1st Qu.                   -0.1030                    0.1090
## Median                    -0.0937                    0.1260
## Mean                      -0.0940                    0.1280
## 3rd Qu.                   -0.0777                    0.1480
## Max.                      -0.0416                    0.1790
##         LAYING.tBodyGyro.std...X LAYING.tBodyGyro.std...Y
## Min.                      -0.994                   -0.993
## 1st Qu.                   -0.982                   -0.976
## Median                    -0.974                   -0.962
## Mean                      -0.967                   -0.963
## 3rd Qu.                   -0.958                   -0.953
## Max.                      -0.874                   -0.927
##         LAYING.tBodyGyro.std...Z LAYING.tBodyGyroJerk.mean...X
## Min.                      -0.985                       -0.1110
## 1st Qu.                   -0.975                       -0.1040
## Median                    -0.965                       -0.1020
## Mean                      -0.962                       -0.1020
## 3rd Qu.                   -0.957                       -0.1000
## Max.                      -0.908                       -0.0956
##         LAYING.tBodyGyroJerk.mean...Y LAYING.tBodyGyroJerk.mean...Z
## Min.                          -0.0427                       -0.0741
## 1st Qu.                       -0.0403                       -0.0692
## Median                        -0.0386                       -0.0634
## Mean                          -0.0382                       -0.0642
## 3rd Qu.                       -0.0365                       -0.0597
## Max.                          -0.0276                       -0.0535
##         LAYING.tBodyGyroJerk.std...X LAYING.tBodyGyroJerk.std...Y
## Min.                          -0.997                       -0.997
## 1st Qu.                       -0.985                       -0.987
## Median                        -0.980                       -0.980
## Mean                          -0.975                       -0.980
## 3rd Qu.                       -0.970                       -0.975
## Max.                          -0.919                       -0.959
##         LAYING.tBodyGyroJerk.std...Z LAYING.tBodyAccMag.mean..
## Min.                          -0.995                    -0.986
## 1st Qu.                       -0.990                    -0.971
## Median                        -0.987                    -0.959
## Mean                          -0.984                    -0.941
## 3rd Qu.                       -0.980                    -0.939
## Max.                          -0.958                    -0.560
##         LAYING.tBodyAccMag.std.. LAYING.tGravityAccMag.mean..
## Min.                      -0.986                       -0.986
## 1st Qu.                   -0.964                       -0.971
## Median                    -0.948                       -0.959
## Mean                      -0.931                       -0.941
## 3rd Qu.                   -0.919                       -0.939
## Max.                      -0.649                       -0.560
##         LAYING.tGravityAccMag.std.. LAYING.tBodyAccJerkMag.mean..
## Min.                         -0.986                        -0.993
## 1st Qu.                      -0.964                        -0.986
## Median                       -0.948                        -0.980
## Mean                         -0.931                        -0.979
## 3rd Qu.                      -0.919                        -0.973
## Max.                         -0.649                        -0.954
##         LAYING.tBodyAccJerkMag.std.. LAYING.tBodyGyroMag.mean..
## Min.                          -0.995                     -0.981
## 1st Qu.                       -0.983                     -0.953
## Median                        -0.976                     -0.948
## Mean                          -0.973                     -0.937
## 3rd Qu.                       -0.964                     -0.928
## Max.                          -0.928                     -0.810
##         LAYING.tBodyGyroMag.std.. LAYING.tBodyGyroJerkMag.mean..
## Min.                       -0.981                         -0.997
## 1st Qu.                    -0.959                         -0.987
## Median                     -0.950                         -0.985
## Mean                       -0.939                         -0.982
## 3rd Qu.                    -0.925                         -0.978
## Max.                       -0.819                         -0.956
##         LAYING.tBodyGyroJerkMag.std.. LAYING.fBodyAcc.mean...X
## Min.                           -0.998                   -0.987
## 1st Qu.                        -0.984                   -0.976
## Median                         -0.979                   -0.972
## Mean                           -0.976                   -0.966
## 3rd Qu.                        -0.969                   -0.954
## Max.                           -0.936                   -0.929
##         LAYING.fBodyAcc.mean...Y LAYING.fBodyAcc.mean...Z
## Min.                      -0.989                   -0.989
## 1st Qu.                   -0.972                   -0.977
## Median                    -0.961                   -0.967
## Mean                      -0.952                   -0.959
## 3rd Qu.                   -0.944                   -0.954
## Max.                      -0.785                   -0.816
##         LAYING.fBodyAcc.std...X LAYING.fBodyAcc.std...Y
## Min.                     -0.985                  -0.991
## 1st Qu.                  -0.972                  -0.974
## Median                   -0.965                  -0.952
## Mean                     -0.958                  -0.941
## 3rd Qu.                  -0.947                  -0.933
## Max.                     -0.903                  -0.672
##         LAYING.fBodyAcc.std...Z LAYING.fBodyAcc.meanFreq...X
## Min.                     -0.987                      -0.6360
## 1st Qu.                  -0.972                      -0.3420
## Median                   -0.961                      -0.2240
## Mean                     -0.945                      -0.2570
## 3rd Qu.                  -0.941                      -0.1470
## Max.                     -0.694                      -0.0638
##         LAYING.fBodyAcc.meanFreq...Y LAYING.fBodyAcc.meanFreq...Z
## Min.                         -0.2150                      -0.0316
## 1st Qu.                       0.0409                       0.1310
## Median                        0.1960                       0.2160
## Mean                          0.1430                       0.2030
## 3rd Qu.                       0.2720                       0.2900
## Max.                          0.4670                       0.4030
##         LAYING.fBodyAccJerk.mean...X LAYING.fBodyAccJerk.mean...Y
## Min.                          -0.992                       -0.989
## 1st Qu.                       -0.986                       -0.982
## Median                        -0.981                       -0.973
## Mean                          -0.980                       -0.970
## 3rd Qu.                       -0.974                       -0.966
## Max.                          -0.957                       -0.922
##         LAYING.fBodyAccJerk.mean...Z LAYING.fBodyAccJerk.std...X
## Min.                          -0.992                      -0.993
## 1st Qu.                       -0.983                      -0.987
## Median                        -0.979                      -0.984
## Mean                          -0.976                      -0.982
## 3rd Qu.                       -0.970                      -0.977
## Max.                          -0.948                      -0.964
##         LAYING.fBodyAccJerk.std...Y LAYING.fBodyAccJerk.std...Z
## Min.                         -0.990                      -0.993
## 1st Qu.                      -0.983                      -0.986
## Median                       -0.975                      -0.983
## Mean                         -0.972                      -0.980
## 3rd Qu.                      -0.967                      -0.975
## Max.                         -0.932                      -0.960
##         LAYING.fBodyAccJerk.meanFreq...X LAYING.fBodyAccJerk.meanFreq...Y
## Min.                             -0.1590                         -0.28000
## 1st Qu.                           0.0675                         -0.02130
## Median                            0.1250                          0.01770
## Mean                              0.1030                          0.00386
## 3rd Qu.                           0.1640                          0.07290
## Max.                              0.2400                          0.19600
##         LAYING.fBodyAccJerk.meanFreq...Z LAYING.fBodyGyro.mean...X
## Min.                             -0.1090                    -0.993
## 1st Qu.                           0.0289                    -0.976
## Median                            0.0651                    -0.971
## Mean                              0.0687                    -0.962
## 3rd Qu.                           0.1190                    -0.954
## Max.                              0.2300                    -0.850
##         LAYING.fBodyGyro.mean...Y LAYING.fBodyGyro.mean...Z
## Min.                       -0.994                    -0.986
## 1st Qu.                    -0.978                    -0.976
## Median                     -0.968                    -0.965
## Mean                       -0.967                    -0.963
## 3rd Qu.                    -0.957                    -0.959
## Max.                       -0.935                    -0.909
##         LAYING.fBodyGyro.std...X LAYING.fBodyGyro.std...Y
## Min.                      -0.995                   -0.992
## 1st Qu.                   -0.984                   -0.976
## Median                    -0.976                   -0.960
## Mean                      -0.969                   -0.961
## 3rd Qu.                   -0.962                   -0.952
## Max.                      -0.882                   -0.923
##         LAYING.fBodyGyro.std...Z LAYING.fBodyGyro.meanFreq...X
## Min.                      -0.986                       -0.2590
## 1st Qu.                   -0.976                       -0.1140
## Median                    -0.969                       -0.0329
## Mean                      -0.966                       -0.0212
## 3rd Qu.                   -0.961                        0.0860
## Max.                      -0.915                        0.2490
##         LAYING.fBodyGyro.meanFreq...Y LAYING.fBodyGyro.meanFreq...Z
## Min.                          -0.5270                       -0.1400
## 1st Qu.                       -0.2340                        0.0415
## Median                        -0.1170                        0.0983
## Mean                          -0.1350                        0.1070
## 3rd Qu.                       -0.0197                        0.1840
## Max.                           0.1050                        0.2890
##         LAYING.fBodyAccMag.mean.. LAYING.fBodyAccMag.std..
## Min.                       -0.987                   -0.988
## 1st Qu.                    -0.969                   -0.966
## Median                     -0.960                   -0.949
## Mean                       -0.946                   -0.933
## 3rd Qu.                    -0.934                   -0.926
## Max.                       -0.774                   -0.651
##         LAYING.fBodyAccMag.meanFreq.. LAYING.fBodyBodyAccJerkMag.mean..
## Min.                          -0.2420                            -0.994
## 1st Qu.                        0.0365                            -0.983
## Median                         0.1130                            -0.976
## Mean                           0.1180                            -0.973
## 3rd Qu.                        0.2560                            -0.964
## Max.                           0.4360                            -0.933
##         LAYING.fBodyBodyAccJerkMag.std..
## Min.                              -0.994
## 1st Qu.                           -0.982
## Median                            -0.975
## Mean                              -0.972
## 3rd Qu.                           -0.964
## Max.                              -0.922
##         LAYING.fBodyBodyAccJerkMag.meanFreq..
## Min.                                    0.157
## 1st Qu.                                 0.209
## Median                                  0.270
## Mean                                    0.277
## 3rd Qu.                                 0.346
## Max.                                    0.488
##         LAYING.fBodyBodyGyroMag.mean.. LAYING.fBodyBodyGyroMag.std..
## Min.                            -0.984                        -0.981
## 1st Qu.                         -0.969                        -0.960
## Median                          -0.962                        -0.951
## Mean                            -0.953                        -0.941
## 3rd Qu.                         -0.944                        -0.929
## Max.                            -0.862                        -0.824
##         LAYING.fBodyBodyGyroMag.meanFreq..
## Min.                               -0.3350
## 1st Qu.                            -0.1710
## Median                             -0.0104
## Mean                               -0.0307
## 3rd Qu.                             0.0963
## Max.                                0.2340
##         LAYING.fBodyBodyGyroJerkMag.mean..
## Min.                                -0.998
## 1st Qu.                             -0.985
## Median                              -0.980
## Mean                                -0.977
## 3rd Qu.                             -0.969
## Max.                                -0.942
##         LAYING.fBodyBodyGyroJerkMag.std..
## Min.                               -0.998
## 1st Qu.                            -0.983
## Median                             -0.980
## Mean                               -0.976
## 3rd Qu.                            -0.970
## Max.                               -0.933
##         LAYING.fBodyBodyGyroJerkMag.meanFreq..
## Min.                                   -0.0162
## 1st Qu.                                 0.0892
## Median                                  0.1700
## Mean                                    0.1640
## 3rd Qu.                                 0.2360
## Max.                                    0.4260
```


