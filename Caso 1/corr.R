#cor.R
getwd()
directorio <- setwd("C:/Users/naye coco/Documents/GitHub/Programaci-n_Actuarial_III_OT16/specdata/specdata")
corr <- function(directorio,horizonte=0){
  A <- vertor("numeric")
  B <- vector("numeric")
  
  for(i in 1:332){
    if(i <10){
      i = paste("00",i,sep = "")
    } else if (i>=10 && i<100){
      i = paste("0",i,sep = "")
    } else {
      i=paste(i,sep = "")
    }
    leer <- read.csv(paste(i,".csv",sep = ""))
    datos <- complete.cases(leer)
    reales  <- leer[datos,2:3]
    numero <- nrow(reales)
     if(numero >= horizonte){
       A <- cor(reales[,1],reales[,2])
       B <- c(B,A)
     }
  }
  B
}

