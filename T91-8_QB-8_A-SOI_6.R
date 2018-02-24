df <- read.csv("C:/Users/tcopelan/Google Drive/BNL Summer 2017/43-648-TMCJ-17/Data/Energy-Dispersive X-Ray Spectroscopy/081117 Archive/T91-8_QB-8_A_SOI_6.csv",
                    header = TRUE, sep = ",", quote = "\"", dec = ".", fill = TRUE, comment.char = "", skip = 9)
df[] <- lapply(df,as.character)
colnames(df) <- df[1,]
df = df[-1, ]
View(df)


