rm(list=ls(all=T))

setwd('C:\\Users\\wesle\\OneDrive\\Área de Trabalho\\Ciência de Dados\\VisaoCoop')

library(PNADcIBGE) # CRAN v0.7.0
library(PNSIBGE)
#library(survey) # CRAN v4.0
#library(convey)
library(tidyverse)
#library(magrittr) # CRAN v2.0.1

#filePNAD <- "C:\\Users\\wesle\\OneDrive\\Área de Trabalho\\Ciência de Dados\\VisaoCoop\\PNADC_012023.txt"

#pnad2023 <- read_pnadc("PNADC_012023.txt", "input_PNADC_trimestral.txt")

#pnad2023 <- subset(pnad2023, select = c('UF','Capital','RM_RIDE','UPA','Estrato','V1023', 'V2007','V2009','VD2006','V2010','V3001','V3002','V3002A','V3003A','VD3004','V4001','VD4008','VD4009','V4009','V403311','VD4016'))

#pnad2023RJ <- filter(pnad2023,UF==33)

#write.csv(pnad2023RJ, "pnad2023RJ.csv", row.names = FALSE)

##################################

filePNS <- "C:\\Users\\wesle\\OneDrive\\Área de Trabalho\\Ciência de Dados\\VisaoCoop\\PNS_2019.txt"

dadosPNS <- read_pns('PNS_2019.txt', input_txt="input_PNS_2019.txt")

pns2022 <- subset(dadosPNS, select = c('V0001','V0024','UPA_PNS','V0020','C006','C008','C009','C011','D001','D00201','VDD004A','VDF004','E01602','VDM001','A005010','A00601','A009010','A01501','A016010','B001','B003','B004','I00102','J01002' ,'J01101'))

pns2022RJ <- filter(pns2022, V0001==33) # especifiquei o estado mas como são dados de todos os estados é só ignorar a linha e usar o pns2022

write.csv(pns2022RJ, "pns2022RJ.csv", row.names = FALSE)
