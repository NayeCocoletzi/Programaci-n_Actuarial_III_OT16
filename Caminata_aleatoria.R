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
