DF <- hugeTable[1:1000,]
sapply(DF, mode)
DF<-as.matrix(sapply(DF, as.numeric))  
dat[, c(3,6:15,37)] <- sapply(dat[, c(3,6:15,37)], as.numeric)

NumericColumnNames <- c("chr","start","end","qual","aaf_esp_all","aaf_1kg_all","cfdna_AF","UC","normal")
DF[NumericColumnNames] <- sapply(DF[NumericColumnNames],as.numeric)
DF[NumericColumnNames]<-sapply(DF[NumericColumnNames],as.numeric)


sapply(DF, mode)


read.xlsx
help(read.xlsx)
