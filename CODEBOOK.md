# Getting-and-Cleaning-Data-Project
Code Book

This data set has two identifiers for each observation.
  1. A subject number - an integer from 1 to 30 identifying the subject who participated in the activities
  2. An activity - a factor with six levels identifying the particular activity that was being measured

There are six levels of activities.
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING

There remaining 79 variables are mean measurements for each activity by subject. The measurements were taken by an accelerometer and gyroscope in a smart phone worn by each subject as they partcipated in each activity.

 [1] "Subject"                      "Activity"                     "tBodyAccMean-X"              
 [4] "tBodyAccMean-Y"               "tBodyAccMean-Z"               "tBodyAccStd-X"               
 [7] "tBodyAccStd-Y"                "tBodyAccStd-Z"                "tGravityAccMean-X"           
[10] "tGravityAccMean-Y"            "tGravityAccMean-Z"            "tGravityAccStd-X"            
[13] "tGravityAccStd-Y"             "tGravityAccStd-Z"             "tBodyAccJerkMean-X"          
[16] "tBodyAccJerkMean-Y"           "tBodyAccJerkMean-Z"           "tBodyAccJerkStd-X"           
[19] "tBodyAccJerkStd-Y"            "tBodyAccJerkStd-Z"            "tBodyGyroMean-X"             
[22] "tBodyGyroMean-Y"              "tBodyGyroMean-Z"              "tBodyGyroStd-X"              
[25] "tBodyGyroStd-Y"               "tBodyGyroStd-Z"               "tBodyGyroJerkMean-X"         
[28] "tBodyGyroJerkMean-Y"          "tBodyGyroJerkMean-Z"          "tBodyGyroJerkStd-X"          
[31] "tBodyGyroJerkStd-Y"           "tBodyGyroJerkStd-Z"           "tBodyAccMagMean"             
[34] "tBodyAccMagStd"               "tGravityAccMagMean"           "tGravityAccMagStd"           
[37] "tBodyAccJerkMagMean"          "tBodyAccJerkMagStd"           "tBodyGyroMagMean"            
[40] "tBodyGyroMagStd"              "tBodyGyroJerkMagMean"         "tBodyGyroJerkMagStd"         
[43] "fBodyAccMean-X"               "fBodyAccMean-Y"               "fBodyAccMean-Z"              
[46] "fBodyAccStd-X"                "fBodyAccStd-Y"                "fBodyAccStd-Z"               
[49] "fBodyAccMeanFreq-X"           "fBodyAccMeanFreq-Y"           "fBodyAccMeanFreq-Z"          
[52] "fBodyAccJerkMean-X"           "fBodyAccJerkMean-Y"           "fBodyAccJerkMean-Z"          
[55] "fBodyAccJerkStd-X"            "fBodyAccJerkStd-Y"            "fBodyAccJerkStd-Z"           
[58] "fBodyAccJerkMeanFreq-X"       "fBodyAccJerkMeanFreq-Y"       "fBodyAccJerkMeanFreq-Z"      
[61] "fBodyGyroMean-X"              "fBodyGyroMean-Y"              "fBodyGyroMean-Z"             
[64] "fBodyGyroStd-X"               "fBodyGyroStd-Y"               "fBodyGyroStd-Z"              
[67] "fBodyGyroMeanFreq-X"          "fBodyGyroMeanFreq-Y"          "fBodyGyroMeanFreq-Z"         
[70] "fBodyAccMagMean"              "fBodyAccMagStd"               "fBodyAccMagMeanFreq"         
[73] "fBodyBodyAccJerkMagMean"      "fBodyBodyAccJerkMagStd"       "fBodyBodyAccJerkMagMeanFreq" 
[76] "fBodyBodyGyroMagMean"         "fBodyBodyGyroMagStd"          "fBodyBodyGyroMagMeanFreq"    
[79] "fBodyBodyGyroJerkMagMean"     "fBodyBodyGyroJerkMagStd"      "fBodyBodyGyroJerkMagMeanFreq"
