library(tidyverse)


#this reads in the data frame from an osf project
my_data<-read.csv("https://osf.io/4zbx2/download")

#use summarise to calculate the mean Brain Volume size and sd for each gender

my_data_mean <- 
  my_data %>% 
  group_by(SEX) %>% 
  summarise(mean_BV = mean(BRAIN_VOLUME),
            sd_BV = sd(BRAIN_VOLUME))

#plotting
#create two boxplots for brain volume for males and females
p_1<-ggplot(aes(y=BRAIN_VOLUME,x=SEX),data=my_data)+geom_boxplot()+theme_classic()+
  geom_jitter(width=.1,alpha=0.5)
print(p_1)

#calculate a new variable in my_data that gives the  BRAIN_VOLUME normalised for HEAD_SIZE

my_data <-
  my_data %>% 
  mutate(rel_BV = BRAIN_VOLUME/HEAD_SIZE)

#same plot as above only corrected for Head size
p_2<-ggplot(aes(y=rel_BV,x=SEX),data=my_data)+geom_boxplot()+theme_classic()+
  geom_jitter(width=.1,alpha=0.5)
print(p_2)


