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

cleansheet2bloodPaired<- function( inputfile, sheetID, outputfileName ){
  DF<-read.xlsx(inputfile, sheet = sheetID, startRow = 1, colNames = TRUE)
  DF=tumorMatched
  names(DF)
  Keep<-c("customer_ID","cfdna_1","cfdna_2","gdnaP","chr","start","end","ref","alt","cfdna_gene","type_info","impact","impact_severity","cfdna_aa_code","cfdna_AF","cfdna_gene.1","type_info.1","impact.1","impact_severity.1","cfdna_aa_code.1","cfdna_AF.1","hgvsAnnot","gDNA_AF","actionable")
  colskeep =which(names(DF) %in% Keep)
  SeqdataKeep =DF[,..colskeep]
  names(SeqdataKeep)
  write.xlsx(SeqdataKeep, outputfileName)
}
write.xlsx(SeqdataKeep, "tumorMatchedReports.xlsx")
