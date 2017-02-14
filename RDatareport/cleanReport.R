source("cleanReportOneBlood.R")

inputfile = "Changhai_PanC_2016_76patients.xlsx"
outputfileName = "hi.xlsx"
sheetID = 5

cleansheetoneblood(inputfile, sheetID, outputfileName)
