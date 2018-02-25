df <- read.csv(text=getURL("https://github.com/PrayForEliza/T91-8_QB-8_A_SOI_6-Tidyverse/blob/master/T91-8_QB-8_A_SOI_6.csv"),
                    header = T, skip = 10)
df[] <- lapply(df,as.character)
colnames(df) <- df[1,]
df = df[-1, ]
View(df)


