# Codebook 

The original dataset was cleaned and summarized using the following steps:

 1. Load the test dataset 
 2. Load the train dataset 
 3. Merge test and train datasets by row
 4. Name the variables 
 5. Select variables with words "mean" and "std" 
 6. Change the names in column "activiy_labels"
 7. Create a second tidy dataset with the average of each variable for each activity and each subject

The final step creates a .txt file with the tidy dataset, also included in the project. The file calculates the mean for every test subject and activity over 69 different variables.

outputdatafile.txt contains 180 observations of 69 variables. Each observation corresponds to the aggrupation of the test subjects and the different activities they were doing during the experiment. Each subject could be either: Walking, Walking upstairs, Walking downstairs, Sitting, Standing or Laying, while researches tested the phone. Therefore, results are different depending on the six different activities.

The variables considered for the dataset are listed above:

 [1] "subject_id"                       
 [2] "activity_names"                  
 [3] "activity_labels"             
 [4] "tBodyAcc-std()-X_mean"           
 [5] "tBodyAcc-std()-Y_mean"            
 [6] "tBodyAcc-std()-Z_mean"           
 [7] "tGravityAcc-std()-X_mean"         
 [8] "tGravityAcc-std()-Y_mean"        
 [9] "tGravityAcc-std()-Z_mean"         
[10] "tBodyAccJerk-std()-X_mean"       
[11] "tBodyAccJerk-std()-Y_mean"        
[12]"tBodyAccJerk-std()-Z_mean"       
[13] "tBodyGyro-std()-X_mean"           
[14] "tBodyGyro-std()-Y_mean"          
[15] "tBodyGyro-std()-Z_mean"           
[16] "tBodyGyroJerk-std()-X_mean"      
[17] "tBodyGyroJerk-std()-Y_mean"       
[18] "tBodyGyroJerk-std()-Z_mean"      
[19] "tBodyAccMag-std()_mean"           
[20] "tGravityAccMag-std()_mean"       
[21] "tBodyAccJerkMag-std()_mean"       
[22] "tBodyGyroMag-std()_mean"         
[23] "tBodyGyroJerkMag-std()_mean"      
[24] "fBodyAcc-std()-X_mean"           
[25] "fBodyAcc-std()-Y_mean"            
[26] "fBodyAcc-std()-Z_mean"           
[27] "fBodyAccJerk-std()-X_mean"        
[28] "fBodyAccJerk-std()-Y_mean"       
[29] "fBodyAccJerk-std()-Z_mean"        
[30] "fBodyGyro-std()-X_mean"          
[31] "fBodyGyro-std()-Y_mean"           
[32] "fBodyGyro-std()-Z_mean"          
[33] "fBodyAccMag-std()_mean"           
[34] "fBodyBodyAccJerkMag-std()_mean"  
[35] "fBodyBodyGyroMag-std()_mean"      
[36] "fBodyBodyGyroJerkMag-std()_mean" 
[37] "tBodyAcc-mean()-X_mean"           
[38] "tBodyAcc-mean()-Y_mean"          
[39] "tBodyAcc-mean()-Z_mean"           
[40] "tGravityAcc-mean()-X_mean"       
[41] "tGravityAcc-mean()-Y_mean"        
[42] "tGravityAcc-mean()-Z_mean"       
[43] "tBodyAccJerk-mean()-X_mean"       
[44] "tBodyAccJerk-mean()-Y_mean"      
[45] "tBodyAccJerk-mean()-Z_mean"       
[46] "tBodyGyro-mean()-X_mean"         
[47] "tBodyGyro-mean()-Y_mean"          
[48] "tBodyGyro-mean()-Z_mean"         
[49] "tBodyGyroJerk-mean()-X_mean"      
[50] "tBodyGyroJerk-mean()-Y_mean"     
[51] "tBodyGyroJerk-mean()-Z_mean"      
[52] "tBodyAccMag-mean()_mean"         
[53] "tGravityAccMag-mean()_mean"       
[54] "tBodyAccJerkMag-mean()_mean"     
[55] "tBodyGyroMag-mean()_mean"         
[56] "tBodyGyroJerkMag-mean()_mean"    
[57] "fBodyAcc-mean()-X_mean"           
[58] "fBodyAcc-mean()-Y_mean"          
[59] "fBodyAcc-mean()-Z_mean"           
[60] "fBodyAccJerk-mean()-X_mean"      
[61] "fBodyAccJerk-mean()-Y_mean"       
[62] "fBodyAccJerk-mean()-Z_mean"      
[63] "fBodyGyro-mean()-X_mean"          
[64] "fBodyGyro-mean()-Y_mean"         
[65] "fBodyGyro-mean()-Z_mean"          
[66] "fBodyAccMag-mean()_mean"         
[67] "fBodyBodyAccJerkMag-mean()_mean"  
[68] "fBodyBodyGyroMag-mean()_mean"    
[69] "fBodyBodyGyroJerkMag-mean()_mean"

The symbol [] represents the number of the column where the variable is located within the dataset. X, Y and Z represents a 3D coordinate system. So measures were taken for every axis representing width, height and depth. 

As you may notice, there is a _mean at the end of every variable. It is due to the fact that raw means and standard deviations (std) where grouped and then another mean was calculated for each group.

Results can be found in "outputdataset.txt"


