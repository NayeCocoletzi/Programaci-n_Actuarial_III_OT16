getwd()
setwd("C:/Users/naye coco/Documents/GitHub/Programaci-n_Actuarial_III_OT16/Caso_2")

rankhospital <- function(Estado,Resultado,N�mero){
        outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        veruno <- unique(outcome[,7])
        if(sum(veruno == Estado) == 1){
                
                if(Resultado=="Ataque" | Resultado=="Falla" | Resultado=="Neumon�a"){
                        if(Resultado=="Ataque"){
                                tasa <- outcome[,11]
                        }else if(Resultado=="Falla"){
                                tasa <- outcome[,17]
                        }else{
                                tasa <- outcome[,23]
                        } 
                          
                        hospital <- outcome[,2]
                        estado <- as.character(outcome[,7])
                        naye <-as.data.frame(cbind(hospital,estado,tasa))
                        #naye
                        sep <- split(naye,outcome$State)
                        #sep
                        inic <- as.matrix(subset(sep[[Estado]],sep[[Estado]][,3]!="Not Available"))
                        #class(inic)
                        #inic
                        ext1<-as.numeric(inic[,3])
                        est2<- order(ext1,decreasing = FALSE)
                        tra11 <- inic[est2,]
                        #tra11
                        a<- nrow(tra11)
                        b<- N�mero
                        if(is.character(b)){
                                if(b=="mejor"){
                                        Fe <- tra11[1,1]
                                }else{
                                        Fe<- tra11[a,1]
                                }
                        }else{
                                if(b>a){
                                        Fe <- "NA"
                                }else{
                                        Fe <- tra11[b,1]
                                } 
                        }
                               
                        
                }else{
                        
                        stop("Resultado inv�lido")
                
        }
        }
                else {
                
                stop("Estado inv�lido")
                
        }
print(Fe)
}
        