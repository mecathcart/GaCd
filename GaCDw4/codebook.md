Codebook for adapted version of UCI HAR dataset


According to the features info file in the UCI HAR documentation "The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

For each pattern, the mean and standard deviation were extracted.  Then, for each variable an average was generated for each subject and activity.  There were six activities.

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

Thus the first two columns are subject and activity and then each of the following variables. (starting from the third)

[3] "time-body-accelerometer-mean-x"                                     
 [4] "time-body-accelerometer-mean-y"                                     
 [5] "time-body-accelerometer-mean-z"                                     
 [6] "time-gravityacc-mean-x"                                             
 [7] "time-gravityacc-mean-y"                                             
 [8] "time-gravityacc-mean-z"                                             
 [9] "time-body-accelerometer-jerk-mean-x"                                
[10] "time-body-accelerometer-jerk-mean-y"                                
[11] "time-body-accelerometer-jerk-mean-z"                                
[12] "time-body-gyroscope-mean-x"                                         
[13] "time-body-gyroscope-mean-y"                                         
[14] "time-body-gyroscope-mean-z"                                         
[15] "time-body-gyroscope-jerk-mean-x"                                    
[16] "time-body-gyroscope-jerk-mean-y"                                    
[17] "time-body-gyroscope-jerk-mean-z"                                    
[18] "time-body-accelerometer-magnitude-mean-"                            
[19] "time-gravityacc-magnitude-mean-"                                    
[20] "time-body-accelerometer-jerk-magnitude-mean-"                       
[21] "time-body-gyroscope-magnitude-mean-"                                
[22] "time-body-gyroscope-jerk-magnitude-mean-"                           
[23] "frequency-body-accelerometer-mean-x"                                
[24] "frequency-body-accelerometer-mean-y"                                
[25] "frequency-body-accelerometer-mean-z"                                
[26] "frequency-body-accelerometer-meanfrequency-x"                       
[27] "frequency-body-accelerometer-meanfrequency-y"                       
[28] "frequency-body-accelerometer-meanfrequency-z"                       
[29] "frequency-body-accelerometer-jerk-mean-x"                           
[30] "frequency-body-accelerometer-jerk-mean-y"                           
[31] "frequency-body-accelerometer-jerk-mean-z"                           
[32] "frequency-body-accelerometer-jerk-meanfrequency-x"                  
[33] "frequency-body-accelerometer-jerk-meanfrequency-y"                  
[34] "frequency-body-accelerometer-jerk-meanfrequency-z"                  
[35] "frequency-body-gyroscope-mean-x"                                    
[36] "frequency-body-gyroscope-mean-y"                                    
[37] "frequency-body-gyroscope-mean-z"                                    
[38] "frequency-body-gyroscope-meanfrequency-x"                           
[39] "frequency-body-gyroscope-meanfrequency-y"                           
[40] "frequency-body-gyroscope-meanfrequency-z"                           
[41] "frequency-body-accelerometer-magnitude-mean-"                       
[42] "frequency-body-accelerometer-magnitude-meanfrequency-"              
[43] "frequency-bodybody-accelerometer-jerk-magnitude-mean-"              
[44] "frequency-bodybody-accelerometer-jerk-magnitude-meanfrequency-"     
[45] "frequency-bodybody-gyroscope-magnitude-mean-"                       
[46] "frequency-bodybody-gyroscope-magnitude-meanfrequency-"              
[47] "frequency-bodybody-gyroscope-jerk-magnitude-mean-"                  
[48] "frequency-bodybody-gyroscope-jerk-magnitude-meanfrequency-"         
[49] "time-body-accelerometer-standard-deviation-x"                       
[50] "time-body-accelerometer-standard-deviation-y"                       
[51] "time-body-accelerometer-standard-deviation-z"                       
[52] "time-gravityacc-standard-deviation-x"                               
[53] "time-gravityacc-standard-deviation-y"                               
[54] "time-gravityacc-standard-deviation-z"                               
[55] "time-body-accelerometer-jerk-standard-deviation-x"                  
[56] "time-body-accelerometer-jerk-standard-deviation-y"                  
[57] "time-body-accelerometer-jerk-standard-deviation-z"                  
[58] "time-body-gyroscope-standard-deviation-x"                           
[59] "time-body-gyroscope-standard-deviation-y"                           
[60] "time-body-gyroscope-standard-deviation-z"                           
[61] "time-body-gyroscope-jerk-standard-deviation-x"                      
[62] "time-body-gyroscope-jerk-standard-deviation-y"                      
[63] "time-body-gyroscope-jerk-standard-deviation-z"                      
[64] "time-body-accelerometer-magnitude-standard-deviation-"              
[65] "time-gravityacc-magnitude-standard-deviation-"                      
[66] "time-body-accelerometer-jerk-magnitude-standard-deviation-"         
[67] "time-body-gyroscope-magnitude-standard-deviation-"                  
[68] "time-body-gyroscope-jerk-magnitude-standard-deviation-"             
[69] "frequency-body-accelerometer-standard-deviation-x"                  
[70] "frequency-body-accelerometer-standard-deviation-y"                  
[71] "frequency-body-accelerometer-standard-deviation-z"                  
[72] "frequency-body-accelerometer-jerk-standard-deviation-x"             
[73] "frequency-body-accelerometer-jerk-standard-deviation-y"             
[74] "frequency-body-accelerometer-jerk-standard-deviation-z"             
[75] "frequency-body-gyroscope-standard-deviation-x"                      
[76] "frequency-body-gyroscope-standard-deviation-y"                      
[77] "frequency-body-gyroscope-standard-deviation-z"                      
[78] "frequency-body-accelerometer-magnitude-standard-deviation-"         
[79] "frequency-bodybody-accelerometer-jerk-magnitude-standard-deviation-"
[80] "frequency-bodybody-gyroscope-magnitude-standard-deviation-"         
[81] "frequency-bodybody-gyroscope-jerk-magnitude-standard-deviation-"  