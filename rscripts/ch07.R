getwd()

dataset <- read.csv("./data/dataset.csv", header=T)
dataset
View(dataset)

head(dataset)
tail(dataset)

str(dataset)

x <- dataset$age

plot(dataset$price)
dataset[c("job", "price")]

summary(dataset)

sum(dataset$price, na.rm = T)
price2 <- na.omit(dataset$price)
