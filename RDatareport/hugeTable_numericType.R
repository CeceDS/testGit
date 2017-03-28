colnames(hugeTable)
sapply(hugeTable, mode)
NumericColumnsName<-c("aaf_1kg_all","aaf_esp_all","cfdna_AF","UC","zscore","aaf_1kg_all.1","aaf_esp_all.1","cfdna_AF.1","UC.1","zscore.1",
                      "diff_AF","mean_AO","mean_DP","gDNA_AF","normal_AF","tissue_AO","normal_AO","tissue_DP","normal_DP","qual","qual.1")
NumericColumns <- which(names(hugeTable) %in% NumericColumnsName)
hugeTable[, NumericColumns] <- sapply(hugeTable[, NumericColumns], as.numeric)
sapply(hugeTable, mode)
