install.packages("car")
library(tidyverse)

library(car)
# the showa of the first 6 data
head(WLD_RTFP_country_2024_03_26)
#show the 6 last dataset 
tail(WLD_RTFP_country_2024_03_26)
#show the coloum names
names(WLD_RTFP_country_2024_03_26)

# the summary of the data
summary(WLD_RTFP_country_2024_03_26)
# show of the data missing data
is.na(WLD_RTFP_country_2024_03_26$Inflation)
# sum of the missing data]
sum(is.na(WLD_RTFP_country_2024_03_26$Inflation))
#omit the missing data
inflation_rate <- na.omit(WLD_RTFP_country_2024_03_26)
# show the data
head(inflation_rate)
# the class of the inflation rate
class(inflation_rate)
#sum the missing value
sum(is.na(inflation_rate))
# the  names of the coloumns 
names(inflation_rate)


#the statistical analysis of the dataset 
 
# the average of the dataset
mean(inflation_rate$Inflation)

# maximum of the inflation data
max(inflation_rate$Inflation)

#the minimum of the dataset
min(inflation_rate$Inflation)

#the variance of the dataset
var(inflation_rate$Inflation)

#the standard deviation of the data

sd(inflation_rate$Inflation)
#the average of the open data
mean(inflation_rate$Open)

#the avarge of the high
mean(inflation_rate$High)
#the avearage of the low
mean(inflation_rate$Low)
#the average of the close data
mean(inflation_rate$Close)

#the correlation of the inflation and the  data
cor(inflation_rate$Inflation,inflation_rate$Open)
cor(inflation_rate$Inflation,inflation_rate$High)
cor(inflation_rate$Inflation,inflation_rate$Low)
cor(inflation_rate$Inflation,inflation_rate$Close)

#the coverance of the datasets
cov(inflation_rate$Inflation,inflation_rate$Open)
cov(inflation_rate$Inflation,inflation_rate$High)
cov(inflation_rate$Inflation,inflation_rate$Low)
cov(inflation_rate$Inflation,inflation_rate$Close)


# the manupulation of the data set 

afghanistan_data <-inflation_rate%>%
  filter(country=="Afghanistan" & Inflation>=0)%>%
  select(Open,Inflation)
afghanistan_data
afghanistan_data
view(afghanistan_data)
 #the grapical representationo of the data set
ggplot(data=inflation_rate,aes(x=date,y=Inflation))+
  geom_line(colour='red',
            linewidth = 3)+
  labs(
    tiltle="trend of the dataset",
    x="date of the inflation",
    y = "innflations rate")+
  theme_minimal()
ggplot(inflation_rate,aes(country,Inflation))+
  geom_col(colour='green',
             fill='steelblue')+
  labs(
    title="the compare of the data with various country",
    x="country",
    y = "inflation")+
  theme_minimal()
#describe the inflation rate by the histogram graph

ggplot(afghanistan_data,aes(Inflation))+
  geom_histogram(size=3,
                 colour='yellow',
                 bins=30,
                 size=3)+
  theme_minimal()
#show the graph of the data
ggplot(inflation_rate,aes(x=Open,y=Inflation))+
  geom_point(colour='red')+
  geom_smooth(colour='black')+
  labs(
    title="the combination of the inflation data",
    x="open data",
    y="inflation rate")+
  theme_minimal()
#the t test of the data
t.test(inflation_rate$Inflation,mu=12)

# the anova test
model_anova <-aov(Inflation ~ country,data=inflation_rate)
summary(model_anova)
TukeyHSD(model_anova)

#simples linear regression
model <-lm(Inflation ~ Open, data = inflation_rate)
summary(model)

#multiples linear regression
model1<-lm(Inflation ~ Open+Low+High+Close,data=inflation_rate)
summary(model1)

vif(model1)
