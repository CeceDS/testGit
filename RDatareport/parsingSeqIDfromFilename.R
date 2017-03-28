library("openxlsx")
LIMSfileFileName = "tidySample.xlsx"
LIMSfile<-read.xlsx(LIMSfileFileName, sheet = 1, startRow = 1, colNames = TRUE)
length(colnames(LIMSfile))
LIMSfile[ , 14] = LIMSfile[ , 13] 