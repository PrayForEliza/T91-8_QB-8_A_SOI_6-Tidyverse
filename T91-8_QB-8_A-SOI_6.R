require(RCurl)
require(yaml)
require(ggplot2)
require(dplyr)
#Acquiring raw data----
df <- read.csv(text=getURL("https://raw.githubusercontent.com/PrayForEliza/T91-8_QB-8_A_SOI_6-Tidyverse/master/T91-8_QB-8_A_SOI_6.csv"),
                    header = T, skip = 9) 
df[] <- lapply(df,as.character)
colnames(df) <- df[1,]
df = df[-1, ]
View(df)
glimpse(df)
#Data Vizualization----

#ggplot(df,aes(x="Weight%Total"))+geom_histogram(binwidth=5)

