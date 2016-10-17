getwd()
setwd("C:/Users/naye coco/Documents/GitHub/Programaci-n_Actuarial_III_OT16/Caso_2")


mejor <- function(Estado,Resultado){
   outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    veruno <- unique(outcome[,7])
     if(sum(veruno == Estado) == 1){
             
       if(Resultado=="Ataque" | Resultado=="Falla" | Resultado=="Neumonía"){
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
               naye
               sep <- split(naye,outcome$State)
               sep
               grur <- sep[[Estado]]
               grur
               #class(grur)
               tra <- as.matrix(grur)
               #colnames(tra)
               extr <- as.vector(tra[,3])
               extra <- as.numeric(extr[extr!="Not Available"])
               aa <- 100
               length(extra)
               for (i in 1:length(extra)) {
                       comp <- extra[i]
                       if(aa<comp){
                               aa <- aa
                       }else{
                               aa <- comp
                       }
               }
               #print(aa)        
               bus <- as.character(aa)
               bus
               HOSPITAL <- tra[,1]
               TASA <- tra[,3]
               #class(TASA)
               buscar <- cbind(HOSPITAL,TASA)
               buscar
               FIN <- buscar[(TASA== bus),1]
             
       }else{
               
         stop("Resultado inválido")
       }
             
        }else {
                
         stop("Estado inválido")
                
        }
 print(FIN)       
}
