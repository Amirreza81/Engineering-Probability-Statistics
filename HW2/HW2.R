library(ggplot2)
ggplot(airquality) +
  geom_boxplot(aes(x = Month, y = Temp, group = Month))
ggplot(airquality) +
  geom_boxplot(aes(x = Month, y = Wind, group = Month))
ggplot(airquality) +
  geom_boxplot(aes(x = Month, y = Ozone, group = Month))
ggplot(airquality) +
  geom_boxplot(aes(x = Month, y = Solar.R, group = Month))
with(airquality, scatter.smooth(Temp, Ozone, lpars = list(col = "red",
                                                          lwd = 2, lty = 6)))
with(airquality, scatter.smooth(Temp, sqrt(Ozone), lpars = list(col = "red",
                                                          lwd = 2, lty = 6)))
with(airquality, scatter.smooth(Temp, sqrt(Wind), lpars = list(col = "red",
                                                               lwd = 2, lty = 6)))
with(airquality, scatter.smooth(Temp, sqrt(Solar.R), lpars = list(col = "red",
                                                               lwd = 2, lty = 6)))
hist(airquality$Wind, xlab = "Wind")
hist(airquality$Solar.R, xlab = "Solar.R")

x <- seq(0,152, by=1)

ggplot(airquality)+
  geom_histogram(aes(Wind), bins = 30)
points(x)
# *****************************************************************************

data_income <- read.csv("adult.csv")
counts <- table(data_income$income)
barplot(counts, main="Car Distribution",
        xlab="Number of Gears")

mio1 <- data_income[,"age"]
View(mio1)
mio2 <- data_income[, "income"]
barplot(mio1, mio2)















