#importing dataset
getwd()
data = read.csv("HR_data.csv")

#Basic EDA
head(data)
class(data)
str(data)

summary(data)
#1.inspecting missing values
colSums(is.na(data))
install.packages("ggplot2")
install.packages("mice")
library(mice)
md.pattern(data)
mymice = mice(data, m = 3, method = "rf", seed = 50)
data_complete = complete(mymice, 1)
summary(data_complete)
plot(density(data2$Pecent.hike.expected.in.CTC), main = "Percentage Hike Expected")
plot(boxplot(data_complete$Age))
plot(boxplot(data_complete$Joining.Bonus))
plot(boxplot(data_complete$Rex.in.Yrs))
hist(data_complete$Pecent.hike.expected.in.CTC)
hist(data_complete$Percent.hike.offered.in.CTC)
hist(data_complete$Age)

