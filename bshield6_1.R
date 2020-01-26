library(ggplot2)
library(dplyr)
library(readr)

#1 & 2
#Data from Kaggle : https://www.kaggle.com/neuromusic/avocado-prices
#Date - The date of the observation
#AveragePrice - the average price of a single avocado
#type - conventional or organic
#year - the year
#Region - the city or region of the observation
#Total Volume - Total number of avocados sold
#4046 - Total number of avocados with PLU 4046 sold
#4225 - Total number of avocados with PLU 4225 sold
#4770 - Total number of avocados with PLU 4770 sold
avacado <- read_csv(url("https://raw.githubusercontent.com/brandonlloydshields/64060_001/master/avocado.csv"))

#Looking at structure
str(avacado)

#3 Descriptive Statistics for Quantitative and Qualitative Variables
summary(avacado$AveragePrice)
summary(avacado$`Total Volume`)
table(avacado$type)
table(avacado$region)

#4 Transform One Variable
avacado$`4046` <- avacado$`4046`/1000
as.character(avacado$year)

#5 Potting a Scatter plot for Numeric Data
plot1 <- plot(avacado$AveragePrice, avacado$`Total Volume`, 
              main = "Average Price vs Toatal Volume",xlab = "Average Price", 
              ylab = "Total Volume")

plot3 <- plot(avacado$`Total Volume`, main = "Total Volume", ylab = "Total Volume")

#Plotting a Bar Graph for Categorical Data
plot2 <- barplot(table(avacado$type), ylab = "Count", main = "Counts of Organic and Conventional Observations")
