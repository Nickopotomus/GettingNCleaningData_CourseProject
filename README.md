run_analysis.R
==================================

This script modifies the original test and train datasets: <br>
1. Reshapes the data sets from their "wide" format, to a "long" format by separating various factors:
   + Participant_ID - 1:30
   + Activity_ID
      + 1 - walking
      + 2 - walking upstairs
      + 3 - walking downstairs
      + 4 - sitting
      + 5 - standing
      + 6 - laying
   + Domain - Time or Frequency
   + Component - Body Motion or Gravitational
   + Instrument - Accelerometer or Gyroscope <br>


2. Records only mean or standard deviation for accelerations, jerks, and their respective magnitudes, resulting in a nx21 matrix
3. Both reshaped training and testing data sets are combined
4. From this combined data set, averages for all accelerations, jerks, and magnitudes are calculated for all permutations of the dataset's factor combinations (i.e. Participant by Activity by Domain by Component by Instrument) resulting in a 1440x21 matrix
5. This matrix is then written to the current working directory as a text file
