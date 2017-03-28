
#Test Data
ID <- c(1, 2, 3, 4)  
Summary <- c("aaaaa. bb. c", "d. eee. ff. g. h", "i. j", "k")  
df <- data.frame(cbind(ID, Summary))  
df$ID <- as.numeric(df$ID)  
df$Summary <- as.character(df$Summary)  

#Test operation
library(data.table)
dt = data.table(df)

ooo<-dt[, strsplit(Summary, ". ", fixed = T), by = ID]
transformeddt<-dt[, strsplit(dt$Summary, ". ", fixed = T), by = dt$ID]

# Load real Data
dataMutation<-read.csv("mutationTable.csv",header = T,sep = "\t")
dataMutation <- dataMutation[ , 1:3]
i <- sapply(dataMutation, is.factor)
dataMutation[3] <- lapply(dataMutation[3], as.character)
dataMutation$Genomic.Locations[638]
#length(dataMutation$Genomic.Locations[1])
Mutation_ID=dataMutation$Mutation_ID
Genomic.Locations = dataMutation$Genomic.Locations
dt = data.table(dataMutation)
UniqueMutation<-dt[, strsplit(Genomic.Locations, ";"), by = Mutation_ID]

write.csv(UniqueMutation, "UniqueMutation.csv")
