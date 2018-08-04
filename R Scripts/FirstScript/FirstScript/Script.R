# This script is meant to be run on the data generated from the FirstScript.py simulation

# Some of this code has been copied from the Microsoft Sample R project
# https://docs.microsoft.com/en-us/visualstudio/rtvs/getting-started-samples
# Specifically from the 2-Introduction_to_ggplot2.R file
# It is recomended that you go and look through that code if you are not already familiar with R

# The ggplot2 package is tremendously popular because it allows you to create
# beautiful plots by describing the plot structure.

# Install and load the packages.
#options(warn = -1)
suppressWarnings(
    if (!require("ggplot2", quietly = TRUE))
        install.packages("ggplot2", quiet = TRUE))

library("ggplot2", quietly = TRUE)

# Set file/directory locations
# THIS NEEDS TO BE CHANGED TO RUN ON YOUR MACHINE!!!
dataFilePath <- "L:/Github Repos/Basic_Neuron_Simulations/Data/FirstData.csv"
outputFolder <- "L:/Github Repos/Basic_Neuron_Simulations/Graphs/FirstScriptR/"

# Read CSV and store it in MyData
# Note that the header = false because there is no header row at the top (it's just data)
MyData <- read.csv(file = dataFilePath, header = FALSE)

# Name the columns
names(MyData) <- c("Time (s)", "Voltage (mV)")

# Set vectors for the Time and Voltage read from the file
MyData.time <- as.numeric(MyData$`Time (s)`)
MyData.volt <- as.numeric(MyData$`Voltage (mV)`)

# Generate the basic plot
plot0 <- ggplot(MyData, aes_q(x = MyData.time, y = MyData.volt)) + geom_path()
plot0

# Additional styling can be done to the plot
# Here is a cheat sheet for the ggplot2
# https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf

# Add labels
plot1 <- plot0 + ggtitle("First Script Simulation (Time vs Voltage)") +
            xlab("Time (s)") +
            ylab("Voltage (mV)")
plot1

# Add color to graph
# And remove the automatically added color legend
plot2 <- plot1 + geom_point(aes(colour = MyData.volt)) +
        scale_colour_gradient2(low = "black", high = "red", mid = "orange", midpoint = -66) +
        guides(color = "none")
plot2

# Save plots to files
# https://ggplot2.tidyverse.org/reference/ggsave.html
ggsave("plot0", plot = p0, device = "jpeg", path = outputFolder)
ggsave("plot1", plot = p1, device = "jpeg", path = outputFolder)
ggsave("plot2", plot = p2, device = "jpeg", path = outputFolder)
