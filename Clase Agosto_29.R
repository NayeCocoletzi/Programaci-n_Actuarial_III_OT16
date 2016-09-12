# Clase de 25/08/2016

#Crear vectores
x <- vector(mode = "numeric", length = 5L)
x

#Crear vectores con la función C
x <- c(.05,.06)
x
class(x)

x <- c(TRUE, FALSE,T,F)
x
class(x)


x <- 10:0
x 
class(x)

x <- c(1+2i,5, 3+9i,-4-5i)
x
class(x)

x <- c("a","b","c","d")
x
class(x)

#Mezcla de objetos en un vector
y <- c(1.7,"a")   #Caracter
y
class(y)

y <- c(TRUE,2)    #Numérico
y 
class(y)

y <- C("a", TRUE) #Caracter
y 
class(y)

y <- C(TRUE,10L,8.5,1+1i,"Nacho")
y
class(y)

# Orden de coacción/coerción explicta
# 1 Character
# 2 Complex
# 3 Numeric
# 4 Integer
# 5 Logical (no domina nada)

z <- 0:6
class(Z)
as.numeric(z)
as.logical(z)
as.character(z)

z <- C(1+2i,3+4i,8,0+3i)
as.logical(z)

z <- C("Programacion", "Actuarial", "III")
as.numeric(z)
as.logical(z)
as.complex(z)

#Listas(es como un vector... pero de vectores y c/u tiene su propia clase)
x <- list(1,"q",TRUE,1+4i,1:100)
x
class(x)

#Matrices
m <- matrix(nrow = 2, ncol = 3)
m
a
dim(m)
attributes(m)
# Cambio de dimencones de 2*3 a 3*2
dim(m) <- c(3,2)
m
#Crear matrizz con datos
m <- matrix(1:6,3,2)
m

m <- matrix(1:6,3,3,T)
m
class(m)
str(m)

dim(m) <- c(2,7)

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(x,y)
z

m1 <- rbind(m,x)
m1
  
m2 <- cbind(m,x)
m2

m3 <-rbind(m1,x)
m3

m4 <- cbind(m2,y)
m4

#Factores
x <- factor(c("si","no","si","si","no", "si","no"))
x
table(x)
unclass(x)
x <- factor(c("si","no","si","si","no", "si","no"), levels =c("si","no"))
unclass(x)

x <- factor(c("azul","azul","rojo","azul","amarillo","verde","azul"))
x
table(x)

#Valores Faltantes
x <- c(1,2,NA,10,3)
is.na(x)
is.nan(x)

x <- c(1,2,NaN,10,3)
is.na(x)
is.nan(x)


#Data Frames
x <- data.frame(Erick = 1:4 , Lori = c(T,T,F,F))
row.names(x) <- c("Primero","Segundo","Tercero","Cuarto")
x
nrow(x)
ncol(x)
attributes(x)
names(x) <- c("Yarely","Karen")
x

#Los nombres nos son exclusivos de data frames
x <- 1:3
names(x) #NULL
names(x) <- c("Hugo","Paco","Luis")
x

x <- list(a = 1:10,b = 100:91, c = 51:60)
x
names(x) <- c("Seq1","Seq2","Seq3")
x


m <- matrix(1:4,2,2)
m
attributes(m)
dimnames(m) <- list(c("fil1","fil2"),c("col1","col2"))
m


m <- matrix(NA,6,6)
m
dimnames(m) <- list(c(1:6),c("A","B","C","D","E","F"))
m


#Lectura de datos
getwd()
setwd("~/GitHub/Programaci-n_Actuarial_III_OT16")
data <- read.csv("Datos_S&P.csv")
data <- read.table("Datos_S&P.csv",T,",")
data

x <- c(T,T,F,T,F,T,"a",5L,1+5i,2+7i,4+8i,3,3,4,.3,.23)
class(x)
x

#Uso de dput y dget
y <- data.frame(a =1 , b ="a")
dput(y)
dput(y, file = "y.R")
nueva.y <- dget("y.R")
y
nueva.y

x <- "Programación Acturial III"
y <- data.frame(a=1,b="a")
dump(c("x","y"), file = "data.R")
rm(x,y)
x
source("data.R")
x <- airquality
x
dput(x, file = "HEAD_Airquality.R")
guardo <- dget("HEAD_Airquality.R")
guardo

con <- url("http://www.fcfm.buap.mx/","r")
x <- readLines(con,7)
x

#Creamos un vector
x <- c("a","b","c","c","d","e")
x
#Extramos []
x[1]
x[2]
#también podemos con secuencias de elementos
x[1:4]
#es posible extraer elmentos que cumplen condiciones
x[x>"b"]
#de Manera equivalente
u <- x=="c"
u
x[u]

#Creamos una lista
x <- list(foo = 1:4, bar = 0.6)
#extraemos el primer elemento de la lista 
# este elmento es una lista  que contiene una secuencia 
x[1]
#extramos nuevamente el primer elemento de la lista,
#ahora el elemtento es la lista en si 
x[[1]]
#Extraemos un elemento por nombre 
x$bar
x[["bar"]]
x["bar"]
x$foo[2]

#Creamos una lista de 3 elementos
x <- list(foo = 1:4, bar = .6, baz = "Hola")
#Extraemos el primer y tercer elemento de una lista
x [c(1,3)]

x[[c(1,3)]]
name <- "foo"
x[[name]]
x$name
x$foo

#Se pueden extraer elementos de elementos extraídos
x <- list(a = list(10, 12, 14), b =list(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[1]][3]


#Estración de matrices
x <- matrix(1:6,2,3)
x
x[1,2]
x[2,1]
x[1,]
x[,2]
#Con drop = False, se mantiene la dimensión y
#el resultado será una matriz
x[1,2,drop = FALSE]
#Si dejamos solamente el espacio, el resultado será un vector
x[1,]
#Si usamos drop= false, el resultado será un matriz 
x[1,,drop=FALSE]
x <- list(aardvarrk =1:5)
x$a
x[["a"]]
x[["a",exact=FALSE]]
x[["aa"]]
x$aa
x$rd
airquality$O

#Valores faltantes
airquality[1:6,]
completos <- complete.cases(airquality)
completos
airquality[completos,]
airquality[completos,][1:6,]
airquality[1:6,][completos,]

x <- 1:4; y <- 6:9
x+y
x > 2
x >= 2
y == 8
y==8
x*y
x/y
x <- 1:4; y <- 6:8
x+y
x <- matrix(1:4, 2,2); y <- matrix(rep(10,4),2,2)
x
y
x*y
x/y
x %*% y

#Estructuras de control
x <- c("a","b","c","d")
for(i in 1:10){print(i)}
for (i in 1:4){print(x[i])}
for (i in seq_along(x)){print(x[i])} #Esto sirve cuándo no sabemos cuantos elementos tiene nuestro ciclo
for(letra in x){print(letra)}
for(i in 1:4)print(x[i])



y <- matrix(1:6,2,3)
y
for (i in y[1,]){print(i)}
for(i in y[2,]){print(i)}
for (i in 1:nrow(y)){for(j in 1:ncol(y)){print(x[i,j])}}
for(i in seq_len(nrow(y))){for (j in seq_len(ncol(y))) {print(x[i,j])}}
#las últimas dos lineas son las mismas

#Ciclo while
z <- 5
while (z>=3 && z<=10) {
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata eleatoria
    z <- z+1
  } else {
      z <- z-1
    }
}

z <- 5
a <- vector("numeric")
while (z>=3 && z<=10){
  print(z)
  a <- c(a,z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata eleatoria
    z <- z+1
  } else {
    z <- z-1
  }
}
plot(a,type = "l")


#Ejercicio

b <- 0
c <- 0
d <- 0
a <- vector("numeric")
for (i in 1:100) {
  z <- 5
  
  while (z>=3 && z<=10){
    b <- b+1
    print(z)
    a <- c(a,z)
    moneda <- rbinom(1,1,0.5)
    if(moneda==1){ #Caminata eleatoria
      z <- z+1
    } else {
      z <- z-1
    }
  }
  a[b]
  if(a[b]==3){
    c <- c+1
  } else {
    d <- d+1
  }
}

c
d



