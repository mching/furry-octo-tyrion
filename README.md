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

The script reads in the `X_test.txt` data and labels the columns with the measurement names from the `features.txt` file. It then adds subject and activity columns to it from `subject_test.txt` and `y_test.txt` files. The script performs the same steps on the `X_train.txt` data. 

The script then appends the `X_train` data rows to the `X_test` rows to create a combined data set. Because we are interested only in the measurements' means and standard deviations, the script selects and keeps only the variables with `mean` or `std` in the variable names.

Using the `ddply` function from the `plyr` package, we calculate the means for each of the measurements' mean and standard deviation variables by subject and activity. The script then writes out the tidy data set as a file named `tidy_data.csv`.
