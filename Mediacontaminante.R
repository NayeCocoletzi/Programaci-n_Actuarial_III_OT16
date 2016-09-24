#mediacontaminante
getwd()
directorio <- setwd("C:/Users/naye coco/Documents/GitHub/Programaci-n_Actuarial_III_OT16/specdata/specdata")
Mediacontaminante <- function(directorio,contaminante,id=1:332){
  A <- 0 #vector("numeric")
  B <- 0
  C <- 0
  if(contaminante == "sulfate"){
    B=1
  } else if(contaminante == "nitrate"){
    B=2
  }
     for(i in id){
       if(i<10){
         i = paste("00",i,sep = "")
       } else if(i>=10 && i<100){
         i = paste("0",i,sep = "")
       } else{
         i = paste(i,sep="")
       }
       
       leer <- read.csv(paste(i,".csv",sep = ""))
       comp <- complete.cases(leer)
       reales <- leer[comp,2:3]
       A <- A + sum(reales[,B])
       C <- C + nrow(reales)
       
     }
  resultado <- A/C
  resultado
}

