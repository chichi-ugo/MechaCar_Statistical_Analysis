# Load the dplyr package
library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG
# Import and read csv file
MechaCar_df <- read.csv(file='MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Perform linear regression using lm() function, pass in
#  all 6 variables, and add the df as the parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df)

# Use summary() function to determine the p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df))


# Deliverable 2: Create Visualizations for the Trip Analysis
# Import and read csv file
SusCoil_df <- read.csv(file='Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Create a 'total_summary' dataframe using summarize() function
total_summary <- SusCoil_df %>% summarize(Mean_PSI=mean(PSI), 
                                          Median_PSI=median(PSI),
                                          Variance=var(PSI), 
                                          Stan_Dev=sd(PSI))

# Create a 'lot_summary' dataframe using group_by() and summarize() functions
lot_summary <- SusCoil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), 
                                                                        Median_PSI=median(PSI),
                                                                        Variance=var(PSI), 
                                                                        Stan_Dev=sd(PSI), .groups = 'keep')


# Deliverable 3: T-Tests on Suspension Coils
# Use t.test() function to determine if the PSI across all manufacturing lots are statistically
#  different from the population mean 
t.test(SusCoil_df$PSI, mu=1500)

# Use t.test() and subset() functions to determine if the PSI for each 
#  manufacturing lot is statistically different from the population mean
t.test(subset(SusCoil_df,Manufacturing_Lot == 'Lot1')$PSI, mu=1500)

t.test(subset(SusCoil_df,Manufacturing_Lot == 'Lot2')$PSI, mu=1500)

t.test(subset(SusCoil_df,Manufacturing_Lot == 'Lot3')$PSI, mu=1500)




