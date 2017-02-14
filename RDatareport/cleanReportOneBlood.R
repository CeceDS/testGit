cleansheetoneblood <- function( inputfile, sheetID, outputfileName ){
  DF<-read.xlsx(inputfile, sheet = sheetID, startRow = 1, colNames = TRUE)
  names(DF)
  cols.char <- names(DF)
  index <- as.numeric(which(cols.char=="chr"))
  HeaddataKeep<-DF[ ,1:index-1]
  Keep<-c("chr","start","end","ref","alt","cfdna_gene","type_info","impact","impact_severity","cfdna_aa_code","cfdna_AF","actionable")
  SeqdataKeep <-DF[ , which(names(DF) %in% Keep)]
  names(SeqdataKeep)
  cleanedDf<-cbind(HeaddataKeep,SeqdataKeep)
  names(cleanedDf)
  write.xlsx(cleanedDf, outputfileName)
}