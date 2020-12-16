##Introduction
Run_analysis.R creates clean dataset ('tidy_dataset.csv') with the mean for each variable every subject. 
This CodeBook provides a description of scope of work that was done for cleaning the dataset.

##Transformations
Following manipulations were performed within 'run_analysis.R' program to obtain the 'tidy_dataset.csv'.

1. Get the raw data, assign descriptive labels;
2. Combine test and train data together;
3. For each testing pull out only mean and standard deviation measurement;
4. Use activities performed as the activity labels in dataset;
5. Create independent tidy dataset with means for each variable-activity-subject.
