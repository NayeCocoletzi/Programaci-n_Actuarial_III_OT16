getwd()
setwd("C:/Users/naye coco/Documents/GitHub/Programaci-n_Actuarial_III_OT16/Caso_2")


rankingcompleto <- function(Resultado,N�mero){
        outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        nombre <- vector("character")
        pert <- vector("character")
        if(Resultado=="Ataque" | Resultado=="Falla" | Resultado=="Neumon�a"){
                if(Resultado=="Ataque"){
                        tasa <- outcome[,11]
                }else if(Resultado=="Falla"){
                        tasa <- outcome[,17]
                }else{
                        tasa <- outcome[,23]
                } 
                
                hospi <- outcome[,2]
                estado <- as.character(outcome[,7])
                naye <-as.data.frame(cbind(hospi,estado,tasa))
                naye
                sep <- split(naye,outcome$State)
                sep
                con<-unique(outcome[,7])
                length(con)
                con
                for (i in 1:53) {
                        dos <- con[i]
                        dos
                        inic <- as.matrix(subset(sep[[dos]],sep[[dos]][,3]!="Not Available"))
                        inic
                        ext1<-as.numeric(inic[,3])
                        ext1
                        est2<- order(ext1,decreasing = FALSE)
                        tra11 <- inic[est2,]
                        tra11
                        dim(tra11)
                        a<- nrow(tra11)
                        a
                        
                        if(is.character(N�mero)){
                                if(N�mero=="mejor"){
                                        nombre<- c(nombre,tra11[1,1])
                                        
                                }else if(N�mero=="peor"){
                                        nombre<- c(nombre,tra11[nrow(tra11),1])
                                }
                        }else{
                                if(N�mero>nrow(tra11)){
                                        nombre <- c(nombre,"NA")
                                }else{
                                        nombre<- c(nombre,tra11[N�mero,1])
                                }
                        }
                        
                        
                        pert <- c(pert,dos)
                }
                
                }else{
                        
                        stop("Resultado inv�lido")
                }
fan <- data.frame(HOSPITAL=nombre,ESTADO=pert)
fan                
              
}