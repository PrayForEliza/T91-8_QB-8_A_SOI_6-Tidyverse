require(RCurl)
require(yaml)
#Acquiring raw data----
df <- read.csv(text=getURL("https://raw.githubusercontent.com/PrayForEliza/T91-8_QB-8_A_SOI_6-Tidyverse/master/T91-8_QB-8_A_SOI_6.csv"),
                    header = T, skip = 9) 
df[] <- lapply(df,as.character)
colnames(df) <- df[1,]
df = df[-1, ]
View(df)

#Data Vizualization----



