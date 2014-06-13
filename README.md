# README 

This repository contains the script for the "Getting and Cleaning Data" Coursera course project. The script takes a dataset and returns it in a tidy form.

Script: run_analysis.R

## Description of Dataset

The dataset is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The archive contains the following files:

* `activity_labels.txt`  This contains the names of the activities (e.g., walking, standing) and the codes (1-6) that are associated with them
* `features.txt` This file contains the names of all of the smartphone measurement variables
* `features_info.txt` This file describes the how the raw measurements were processed into the measurement variables
* `README.txt` This file describes how the experiments were carried out

There are also two directories
- `test`
  - `Inertial Signals`
  - `subject_test.txt` This contains the subject # for each row
  - `X_test.txt` This contains a space delimited file with the smartphone measurements
  - `y_test.txt` This contains the activity for each row
- `train`
  - `Inertial Signals`
  - `subject_train.txt` This contains the subject # for each row
  - `X_train.txt` This contains a space delimited file with the smartphone measurements
  - `y_train.txt` This contains the activity for each row

## Description of Script

To use the script, download the Dataset from the location above and unzip it into a directory called `dataset` within the working directory. 

The script reads in the `X_test.txt` data and labels the columns the measurement names from the `features.txt` file. It then adds subject and activity columns to it from `subject_test.txt` and `y_test.txt` files. It then performs the same steps on the `X_train.txt` data. The script then appends the `X_train` data rows to the `X_test` rows.

Because we are interested only in the processed measurements' means and standard deviations, the script selects and keeps only the variables with `mean` or `std` in the variable names.

The resulting data has multiple rows carrying observations on the same subjects. We split the data by subject, resulting in a list of subjects, each with activity and measurement variables. We then further split the data on activity, resulting in a nested list of measurements by activity. Finally, we obtain a mean for each of the measurement variables.

The result of this process is a list of subjects, each with a list of activities, each of which has a list of means. Using `sapply` and `unlist`, we combine the activities and means, resulting in a data frame where the columns are subjects with rows of means labeled with the corresponding activity. 

To put subjects in the rows and means in the columns, we finally transpose the columns and add back the subject variable.

The script writes out the tidy data set as a file named `tidy_data.csv`.
