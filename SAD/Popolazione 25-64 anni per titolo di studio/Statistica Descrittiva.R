covarianzaMedLau <- cov(licenza_media,laurea) 
covarianzaMedLau

coefficienteCorrelazioneMedLau <- cor(licenza_media,laurea) 
coefficienteCorrelazioneMedLau

plot(licenza_media ,laurea ,main="Retta di regressione ", xlab="Licenza media",ylab="Laurea", col ="red")
abline (lm(laurea~licenza_media ), col="blue")
stime <-fitted (lm(laurea~licenza_media))
segments (licenza_media ,stime ,licenza_media,laurea , col =" magenta ")

residui <-resid (lm(laurea ~ licenza_media ))
plot(licenza_media ,residui , main=" Diagramma  dei  residui ", xlab=" Medie",ylab=" Residui ",pch =9, col ="red ")
abline (h=0, col ="blue ",lty =2)

plot(valoriStimati , residuiStandardizzati , main =" Residui standard rispetto  ai valori   stimati ", xlab="Valori   stimati ",ylab =" Residui   standard ",pch =5, col ="red ")
abline (h=0, col ="blue ",lty =2)

plot( valoriStimatiMult , residuiStandardizzatiMulti , main=" Residui standard rispetto ai valori stimati (Regressione Multipla)", xlab=" Valori   stimati ",ylab=" Residui   standard ",pch =5, col ="red ")
abline (h=0, col =" blue",lty =2)

plot(diploma ,laurea ,main="Scatterplot laurea in funzione di diploma ", xlab="Diploma",ylab="Laurea", col ="red")
abline (lm(laurea~diploma ), col="blue")

beta <-(sd(laurea )/sd(licenza_media ))*cor(licenza_media ,laurea)
alpha <-mean(laurea)-beta*mean(licenza_media)
c(alpha ,beta)

linearModel <- lm(laurea~licenza_media) 
linearModel
attributes(linearModel)
linearModel$coefficients

valoriStimati <- fitted(lm(laurea~licenza_media))
valoriStimati
linearModel$fitted.values

valoriResidui <- resid(lm(laurea~licenza_media))
valoriResidui
linearModel$residuals

residuiStandardizzati <- valoriResidui/sd(valoriResidui)
residuiStandardizzati

median(linearModel$residuals)
var(linearModel$residuals)
sd(linearModel$residuals)

(cor(licenza_media,laurea))^2
summary(linearModel)$r.square

cov(matricePopolazionePerTitoliDiStudio)
cor(matricePopolazionePerTitoliDiStudio)

linearModelMultiplo <- lm(laurea~licenza_media+ licenza_elementare_o_nessuno+ diploma+ maturita)
linearModelMultiplo

valoriStimatiMult <- fitted(linearModelMultiplo) 
valoriStimatiMult
linearModelMultiplo$fitted.values

valoriResiduiMult <- resid(linearModelMultiplo)
valoriResiduiMult
linearModelMultiplo$residuals

median(linearModelMultiplo$residuals)
var(linearModelMultiplo$residuals)
sd(linearModelMultiplo$residuals)

residuiStandardizzatiMulti <- valoriResiduiMult/sd(valoriResiduiMult)
residuiStandardizzatiMulti

summary(linearModelMultiplo)$r.square

summary(lm(laurea~diploma))$r.square

regressionePolinomiale <-lm(laurea~diploma+I((diploma)^2)) 
regressionePolinomiale

summary (regressionePolinomiale)$r.square

plot(diploma,laurea,main="Lineare",xlab="Diploma",ylab="Laurea" , col = "red")
alpha <- regressionePolinomiale$coefficients[[1]]
beta <- regressionePolinomiale$coefficients[[2]]
gamma <- regressionePolinomiale$coefficients[[3]]
abline(lm(laurea~diploma), col = "blue")
curve (alpha+beta*x+gamma*x^2, add=TRUE, col = "green")
stime <- fitted (lm(laurea~diploma+I((diploma)^2)))
segments (diploma , stime, diploma,laurea , col =" magenta ")