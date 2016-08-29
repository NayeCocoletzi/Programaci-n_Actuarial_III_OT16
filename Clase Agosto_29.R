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

