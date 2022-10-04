dnorm(x, mean = mu , sd = sigma )

curve(dnorm (x,mean=2,sd =1) ,from=-2, to=6, xlab="x",ylab="f(x)", main="Densita Normale con mu = 2 e sigma = 1")
curve(dnorm (x,mean=-1,sd =1) ,from=-6, to=6, xlab="x",ylab="f(x)", add=TRUE,col = "blue")
curve(dnorm (x,mean=1,sd =1) ,from=-6, to=6, xlab="x",ylab="f(x)", add=TRUE, col = "green")

curve(dnorm(x,mean=0, sd =0.5) ,from=-4, to=4, xlab="x", ylab="f(x)",main="mu=0;	sigma = 0.5 ,1 ,1.5 ",col = "blue")
curve(dnorm(x,mean=0, sd=1) ,from=-4, to=4, xlab="x",ylab="f(x)", add=TRUE,col="red")
curve(dnorm(x,mean=0, sd =1.5) ,from=-4, to=4, xlab="x",ylab="f(x)", add=TRUE,col="green")

pnorm(x, mean = mu , sd = sigma , lower.tail = TRUE)

curve(pnorm (x,mean=0,sd =0.5) ,from=-4, to=4, xlab="x", ylab=expression (P(X<=x)),main="mu=0; sigma = 0.5 ,1 ,1.5 ",lty =2)
text (-0.4,0.8, "sigma = 0.5")
curve(pnorm (x,mean=0,sd=1) ,add=TRUE,col="red")
arrows (-1,0.1,0.21,0.18, code=1, length = 0.10)
text (0.8 ,0.2 , "sigma = 1")
curve(pnorm (x,mean=0,sd =1.5) ,add =TRUE ,lty =3)
text (-2.2,0.2, "sigma = 1.5")

pnorm (3, mean=0,sd =1) - pnorm (-3,mean=0, sd=1)

qnorm(z, mean = mu , sd = sigma , lower.tail = TRUE)

scelta <- c(0 ,0.25,0.5 ,0.75,1)
qnorm(scelta, mean = 0, sd = 1)

hist(rnorm(500, mean = mu , sd = sigma ))

campione <- rnorm(10000,mean = 1000 , sd = 1.5)	

boxplot(campione, main = "Boxplot Campione Normale", col = "blue", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

stimaMediaMomenti <-mean(campione) 
stimaMediaMomenti

stimaVarianzaMomenti <-(length (campione) -1)*var(campione)/length (campione)
stimaVarianzaMomenti

alpha <-1 - 0.95
deviazioneStandard <- 1.5
n<-length (campione)
#stima del  limite  superiore
mean(campione)+qnorm (1- alpha /2,mean=0,sd =1)*deviazioneStandard/sqrt(n)
#stima del limite inferiore
mean(campione)-qnorm (1- alpha /2,mean=0,sd =1)*deviazioneStandard/sqrt(n)

alpha <-1 - 0.95
deviazioneStandard <- sd(campione)
deviazioneStandard
n<-length (campione)
#stima del limite inferiore
mean(campione)-qt(1- alpha /2,df=n-1)*deviazioneStandard/sqrt(n)
#stima del  limite  superiore
mean(campione)+qt(1- alpha /2,df=n-1)*deviazioneStandard/sqrt(n)

n <- length (campione) 
mu <- 1000
alpha <-1 - 0.95

#stima del limite inferiore
((n-1)*var  (campione)+n*(mean(campione)-mu)**2)/qchisq  (1-  alpha/2,df=n)
#stima del  limite  superiore
((n-1)*var  (campione)+n*(mean(campione)-mu)**2)/qchisq(alpha/2,df=n)

n <- length (campione) 
alpha <-1 - 0.95
(n-1) *var(campione)/qchisq (1- alpha/2,df=n -1)
(n-1) *var(campione)/qchisq  (alpha /2,df=n-1)

campione2 <- rnorm(9000,mean = 980 , sd = 2)

alpha <-1 -0.95
n1 <- length(campione) 
n2 <- length(campione2)

m1 <- mean(campione)
m2 <- mean(campione2)
sigma1 <- 2.25
sigma2 <- 4

#stima del limite inferiore
m1-m2 -qnorm  (1-  alpha/2,mean=0, sd=1)*sqrt(sigma1 ^2/n1+sigma2 ^2/n2)
#stima del  limite  superiore
m1-m2+qnorm  (1-  alpha/2,mean=0, sd=1)*sqrt(sigma1 ^2/n1+sigma2 ^2/n2)

alpha <-1 -0.99
n1 <- length(campione)
n2 <- length(campione2)
m1 <- mean(campione) 
m2 <- mean(campione2)

s1 <- sd(campione) 
s2 <- sd(campione2)

#stima del limite inferiore
m1-m2 -qnorm  (1-  alpha/2,mean=0, sd=1)*sqrt(s1^2/n1+s2^2/n2)
#stima del  limite  superiore
m1-m2+qnorm  (1-  alpha/2,mean=0, sd=1)*sqrt(s1^2/n1+s2^2/n2)

alpha <- 0.05
mu0 <- 999.94
sigma <- 2.25

#z alpha/2
qnorm (1- alpha /2,mean=0,sd=1)
#-z alpha/2
-qnorm (1- alpha /2,mean=0,sd=1)

n <- length(campione)
meancamp <-mean(campione)
(meancamp -mu0 )/(sigma/sqrt(n))

alpha <- 0.03
mu0 <- 999.90
sigma <- 2.25

#z alpha/2
qt(1- alpha/2,df=n-1)

#-z alpha/2
-qt(1- alpha/2,df=n-1)

n <- length(campione)
meancamp <-mean(campione) 
sdCamp <- sd(campione) 
(meancamp -mu0)/(sdCamp /sqrt(n))

m <- mean(campione) 
d <- sd(campione)
a <- numeric (4)
for(i in 1:4)
  a[i]<-qnorm (0.2*i,mean=m,sd=d) 
a

r<-5
nint <-numeric (r)
nint [1] <-length (which(campione < a[1]))
nint [2] <-length (which ((campione >= a[1])&(campione <a[2])))
nint [3] <-length (which ((campione >= a[2])&(campione <a[3])))
nint [4] <-length (which ((campione >= a[3])&(campione <a[4])))
nint [5] <-length (which(campione >= a[4]))
nint

chi2 <-sum  ((( nint -n*0.2)/sqrt(n*0.2))^2)
chi2

k<-2
alpha <-0.05
qchisq (alpha/2,df=r-k -1)

qchisq (1- alpha /2,df=r-k-1)

x <- 7:23
y <- dbinom(x,30,0.5) 
plot(x,y,type='h',  ylab='P(x) = x', xlab ='x', lwd=3)
title('Distribuzione Binomiale n = 30, p = 0.5')

par (mfrow =c(2 ,2) )
curve ( dnorm (x, mean =2, sd =1) ,from =-2, to=6, xlab="x",ylab="f(x)", ylim=c (0 ,0.5) ,main="Densità Normale con mu = 2, sigma = 1")

sim1 <-rnorm (500 , mean =2, sd =1)
hist(sim1 ,freq =F, xlim=c(-2,6) ,ylim=c(0 ,0.5) ,breaks =100 , xlab="x", ylab=" Istogramma ",main="Densità Simulata con N = 500")

sim2 <-rnorm (5000 , mean =2, sd =1)
hist(sim2 ,freq =F, xlim=c(-2,6) ,ylim=c(0 ,0.5) ,breaks =100 , xlab="x", ylab=" Istogramma ",main="Densità Simulata con N = 5000")

sim3 <-rnorm (50000 , mean =2, sd =1)
hist(sim3 ,freq =F, xlim=c(-2,6) ,ylim=c(0 ,0.5) ,breaks =100 , xlab="x", ylab=" Istogramma ",main="Densità Simulata con N = 50000")

curve(dnorm(x, mean = 2, sd = 1))
x<- 5
hist(campione, main = 'Istogramma Campione con n = 10000', ylab='Istogramma', xlab ='x', breaks = 100)

par ( mfrow =c(2 ,2) )
p <-0.2
q <-1-p
x <-0:25
n <-25
curve ( dnorm (x,n*p, sqrt(n*p*q)),from=n*p -3* sqrt(n*p*q),to=n*p+3* sqrt(n*p*q),xlab="x",ylab="P(X = x)", main="Binomiale n = 25, p = 0.2")
lines (x, dbinom (x,n ,0.2) ,type="h")

x <-0:50
n <-50
curve ( dnorm (x,n*p, sqrt(n*p*q)),from=n*p -3* sqrt(n*p*q),to=n*p+3* sqrt(n*p*q),xlab="x",ylab="P(X = x)",main=" Binomiale n = 50, p = 0.2")
lines (x, dbinom (x,n ,0.2) ,type="h")

x <-0:75
n <-75
curve ( dnorm (x,n*p, sqrt(n*p*q)),from=n*p -3* sqrt(n*p*q),to=n*p+3* sqrt(n*p*q),xlab="x",ylab="P(X = x)",main=" Binomiale n = 75, p = 0.2")
lines (x, dbinom (x,n ,0.2) ,type="h")

x <-0:100
n <-100
curve ( dnorm (x,n*p, sqrt(n*p*q)),from=n*p -3* sqrt(n*p*q),to=n*p+3* sqrt(n*p*q),xlab="x",ylab="P(X = x)",main=" Binomiale n = 100 , p = 0.2")
lines (x, dbinom (x,n ,0.2) ,type="h")

par ( mfrow =c(2 ,2) )
x <-0:20
n <-20
p <-0.125
q <-1-p
curve ( dnorm (x,n*p, sqrt(n*p*q)),from=n*p -3* sqrt(n*p*q),to=n*p+3* sqrt(n*p*q),xlab="x",ylab="P(X = x)",main="Binomiale n = 20, p = 0.125")
lines (x, dbinom (x,n ,0.125) ,type ="h")

p <-0.25
q <-1-p
curve ( dnorm (x,n*p, sqrt(n*p*q)),from=n*p -3* sqrt(n*p*q),to=n*p+3* sqrt(n*p*q),xlab="x",ylab="P(X = x)",main=" Binomiale n = 20, p = 0.25")
lines (x, dbinom (x,n ,0.25) ,type="h")

p <-0.375
q <-1-p
curve ( dnorm (x,n*p, sqrt(n*p*q)),from=n*p -3* sqrt(n*p*q),to=n*p+3* sqrt(n*p*q),xlab="x",ylab="P(X = x)",main=" Binomiale n = 20, p = 0.375")
lines (x, dbinom (x,n ,0.375) ,type ="h")

p <-0.5
q <-1-p
curve ( dnorm (x,n*p, sqrt(n*p*q)),from=n*p -3* sqrt(n*p*q),to=n*p+3* sqrt(n*p*q),xlab="x",ylab="P(X = x)", main=" Binomiale n = 20, p = 0.5")
lines (x, dbinom (x,n ,0.5) ,type="h")

layout.matrix <- matrix(c(2, 1, 0, 3, 4), nrow = 2, ncol = 3)

layout(mat = layout.matrix,
       heights = c(2, 2), # Heights of the two rows
       widths = c(2, 3)) # Widths of the two columns

layout.show(4)