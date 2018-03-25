#Required packages----
require(RCurl)
require(yaml)
require(ggplot2)
require(dplyr)
require(magrittr)
require(googlesheets)
#Acquiring raw data----
##df <- read.csv(text=getURL("https://raw.githubusercontent.com/PrayForEliza/T91-8_QB-8_A_SOI_6-Tidyverse/master/T91-8_QB-8_A_SOI_6.csv"),
##                    header = T, skip = 9) 
input <- gs_title("T91-8_QB-8_A_SOI_6.csv")
df <- gs_read_csv(input, header = T, skip =10)
#df[] <- lapply(df,as.character)
#colnames(df) <- df[1,]
#df = df[-1, ]
#View(df)

#Data Vizualization----
as_data_frame(df)
df$`Weight%Total`=as.integer(as.character(df$`Weight%Total`))
wttots=ggplot(df,aes(x=df$'Weight%Total', fill=factor(..x..)))+geom_histogram(binwidth = 2)
plot(wttots)
