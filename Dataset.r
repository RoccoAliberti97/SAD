licenza_elementare_o_nessuno <- c(3.4, 3.0, 2.6, 2.8, 2.1, 2.6, 2.3, 2.7, 3.8, 3.0, 3.4, 3.1, 3.6, 4.3, 9.9, 9.5, 5.6, 10.4, 9.1, 5.6)
licenza_media <- c(33.1, 34.8, 28.6, 32.0, 30.2, 31.8, 26.3, 28.7, 31.5, 25.3, 31.1, 26.1, 28.4, 34.1, 36.1, 38.9, 30.7, 34.6 ,38.2, 41.3)
diploma <- c(9.7, 7.5, 6.6, 10.4, 18.3, 11.7, 11.9, 8.7, 5.5, 6.2, 6.4, 2.9, 3.9, 3.1, 3.1, 2.8, 3.9, 2.1, 2.1, 2.4)
maturita <- c(33.7, 34.8, 40.2, 33.0, 29.4, 33.9, 37.8, 36.3, 37.8, 42.2, 37.6, 40.7, 42.7, 40.3, 34.4, 33.3, 42.0, 36.8, 35.5, 32.8)
laurea <- c(19.8, 19.6, 21.8, 21.6, 19.8, 19.7, 21.3, 23.3, 21.1, 23.1, 21.1, 26.9, 21.1, 18.6, 16.2, 15.3, 17.5, 15.9, 14.9, 17.6)

matricePopolazionePerTitoliDiStudio <- cbind(licenza_elementare_o_nessuno, licenza_media, diploma, maturita, laurea)
regioni <- c("Piemonte", "Valle d'Aosta", "Liguria", "Lombardia", "Trentino Alto Adige","Veneto", "Friuli-Venezia Giulia", "Emilia-Romagna", "Toscana","Umbria", "Marche","Lazio", "Abruzzo", "Molise", "Campania", "Puglia", "Basilicata", "Calabria", "Sicilia", "Sardegna")
rownames(matricePopolazionePerTitoliDiStudio) <- regioni
titoli <- c("Elementare o nessun titolo", "Medie", "Diploma", "Maturità", "Laurea")
colnames(matricePopolazionePerTitoliDiStudio) <- titoli

regioniAbbreviate <- c("PIE","VDA","LIG","LOM","TAA","VEN","FVG","ER","TOS", "UMB","MAR","LAZ","ABR","MOL","CAM","PUG","BAS","CAL","SIC","SAR")

classiScelte <- c(0,8,16,24,32,40,48)

table(cut(licenza_elementare_o_nessuno,classiScelte))
barplot(table(cut(licenza_elementare_o_nessuno,classiScelte)), col = 1:5, main = "Licenza elementare", las=1, ylim = c(0,17))

table(cut(licenza_media,classiScelte))
barplot(table(cut(licenza_media,classiScelte)), col = 1:5, main = "Licenza media", las=1, ylim = c(0,12))

table(cut(diploma,classiScelte))
barplot(table(cut(diploma,classiScelte)), col = 1:5, main = "Diploma", las=1, ylim = c(0,14))

table(cut(maturita,classiScelte))
barplot(table(cut(maturita,classiScelte)), col = 1:5, main = "Maturità", las=1, ylim = c(0,14))

table(cut(laurea,classiScelte))
barplot(table(cut(laurea,classiScelte)), col = 1:5, main = "Laurea", las=1, ylim = c(0,17))


table(cut(licenza_elementare_o_nessuno,classiScelte))/length(licenza_elementare_o_nessuno)
barplot(table(cut(licenza_elementare_o_nessuno,classiScelte))/length(licenza_elementare_o_nessuno), col = 1:5, main = "Licenza Elementare", las=1, ylim = c(0,0.8))

table(cut(licenza_media,classiScelte))/length(licenza_media)
barplot(table(cut(licenza_media,classiScelte))/length(licenza_media), col = 1:5, main = "Licenza Media", las=1, ylim = c(0,0.6))

table(cut(diploma,classiScelte))/length(diploma)
barplot(table(cut(diploma,classiScelte))/length(diploma), col = 1:5, main = "Diploma", las=1, ylim = c(0,0.7))

table(cut(maturita,classiScelte))/length(maturita)
barplot(table(cut(maturita,classiScelte))/length(maturita), col = 1:5, main = "Maturità", las=1, ylim = c(0,0.7))

table(cut(laurea,classiScelte))/length(laurea)
barplot(table(cut(laurea,classiScelte))/length(laurea), col = 1:5, main = "Laurea", las=1, ylim = c(0,0.8))


barplot(matricePopolazionePerTitoliDiStudio[,1], col = 1:20, main = "Percentuale di persone con nessun titolo o licenza elementare",las=2, names.arg=regioniAbbreviate, ylim = c(0,15))
barplot(matricePopolazionePerTitoliDiStudio[,2], col = 1:20, main = "Percentuale di persone con la sola licenza media",las=2, names.arg=regioniAbbreviate, ylim = c(0,45))
barplot(matricePopolazionePerTitoliDiStudio[,3], col = 1:20, main = "Percentuale di persone con diploma professionale",las=2, names.arg=regioniAbbreviate, ylim = c(0,20))
barplot(matricePopolazionePerTitoliDiStudio[,4], col = 1:20, main = "Percentuale di persone con la maturità",las=2, names.arg=regioniAbbreviate, ylim = c(0,45))
barplot(matricePopolazionePerTitoliDiStudio[,5], col = 1:20, main = "Percentuale di persone con la laurea",las=2, names.arg=regioniAbbreviate, ylim = c(0,30))


italia <- c(
  rep("Licenza Elementare o Nessun Titolo",4.9),
  rep("Licenza Media",32.5),
  rep("Diploma",6.6),
  rep("Maturità",35.7),
  rep("Laurea",20.1)
)
pie(table(italia),col = 1:5)


plot(licenza_elementare_o_nessuno, ylab="Percentuale nessun titolo o licenza elementare", xlab="Regioni", col =1:20,type = "b",axes = FALSE)
box(which = "plot", lty = "solid")
axis(side=2)
axis(side=1, at=1:20, labels=regioniAbbreviate,cex.axis=0.50)

plot(licenza_media, ylab="Percentuale licenza media", xlab="Regioni", col =1:20,type = "b",axes = FALSE)
box(which = "plot", lty = "solid")
axis(side=2)
axis(side=1, at=1:20, labels=regioniAbbreviate,cex.axis=0.50)

plot(diploma, ylab="Percentuale Diploma", xlab="Regioni", col =1:20,type = "b",axes = FALSE)
box(which = "plot", lty = "solid")
axis(side=2)
axis(side=1, at=1:20, labels=regioniAbbreviate,cex.axis=0.50)

plot(maturita, ylab="Percentuale Maturità", xlab="Regioni", col =1:20,type = "b",axes = FALSE)
box(which = "plot", lty = "solid")
axis(side=2)
axis(side=1, at=1:20, labels=regioniAbbreviate,cex.axis=0.50)

plot(laurea, ylab="Percentuale Laurea", xlab="Regioni", col =1:20,type = "b",axes = FALSE)
box(which = "plot", lty = "solid")
axis(side=2)
axis(side=1, at=1:20, labels=regioniAbbreviate,cex.axis=0.50)


laureaHistOutput<-hist(laurea ,freq=TRUE ,main=" Istogramma laurea", ylab="Frequenza assoluta delle classi ",col = 1:7)
str(laureaHistOutput)
laureaHistOutput$breaks
laureaHistOutput$counts
laureaHistOutput$density
laureaHistOutput$mids
laureaHistOutput$density * 2

laureaHistOutputRel<-hist(laurea ,freq=FALSE ,main=" Istogramma laurea", ylab="Frequenza relativa delle classi ",col = 1:7)
str(laureaHistOutputRel)
laureaHistOutputRel$breaks
laureaHistOutputRel$counts
laureaHistOutputRel$density
laureaHistOutputRel$mids


quantile(licenza_elementare_o_nessuno)
summary(licenza_elementare_o_nessuno)

boxplot(licenza_elementare_o_nessuno, main = "boxplot nessun titolo o licenza elementare", col = "red", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

summary(laurea)

elementariBoxPlotStats <- boxplot.stats(licenza_elementare_o_nessuno)
elementariBoxPlotStats$stats[1]
elementariBoxPlotStats$stats[5]
elementariBoxPlotStats$out

boxplot(licenza_media, main = "boxplot licenza media", col = "green", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

mediaBoxPlotStats <- boxplot.stats(licenza_media)
mediaBoxPlotStats$stats[1]
mediaBoxPlotStats$stats[5]
mediaBoxPlotStats$out

boxplot(diploma, main = "boxplot diploma", col = "blue", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

diplomaBoxPlotStats <- boxplot.stats(diploma)
diplomaBoxPlotStats$stats[1]
diplomaBoxPlotStats$stats[5]
diplomaBoxPlotStats$out

boxplot(maturita, main = "boxplot maturità", col = "purple", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

maturitaBoxPlotStats <- boxplot.stats(maturita)
maturitaBoxPlotStats$stats[1]
maturitaBoxPlotStats$stats[5]
maturitaBoxPlotStats$out

boxplot(laurea, main = "boxplot laurea", col = "yellow", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

laureaBoxPlotStats <- boxplot.stats(laurea)
laureaBoxPlotStats$stats[1]
laureaBoxPlotStats$stats[5]
laureaBoxPlotStats$out

boxplot(licenza_elementare_o_nessuno, licenza_media, diploma, maturita, laurea, col = c("red","green","blue","purple", "yellow"), names = c("Elementare", "Media", "Diploma", "Maturità", "Laurea"))

plot(licenza_media,laurea, main = "Percentuale conseguimento medie in funzione perncentuale laureati",  xlab = "Percentuale medie", ylab = "Percentuale laurea", col ="red")
abline (h=mediaCampionariaLaurea, col="green")
abline (h=medianaLaurea, lty=2, col="blue")
abline (v=mediaCampionariaMedie, col="green")
abline (v=medianaMedie, lty=2, col="blue")


pairs(matricePopolazionePerTitoliDiStudio,
      main = "Scatterplot per tutte le coppie di variabili")

plot(
  ecdf(laurea),
  main="Funzione di distribuzione empirica discreta relativo alle lauree ", verticals = TRUE , col="red")
ecdf(laurea)(17)


classiDistrEmpCont <-c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)	

FrequenzaCumulateLicEle <- cumsum (table ( cut(licenza_elementare_o_nessuno , breaks =classiDistrEmpCont , right =FALSE )))/length (licenza_elementare_o_nessuno)

FrequenzaCumulateLicEle <- c(0,FrequenzaCumulateLicEle)
plot(classiDistrEmpCont , FrequenzaCumulateLicEle , type = "b", axes = FALSE , main = "Funzione di distribuzione empirica continua licenza elementare", col="red", xlab = "Classi", ylab = "Frequenze cumulate")
axis(1, classiDistrEmpCont, cex.axis=0.80)
axis(2, format (FrequenzaCumulateLicEle , digits = 2), cex.axis=0.80)
box ()


FrequenzaCumulateLicMed <- cumsum (table ( cut(licenza_media , breaks =classiDistrEmpCont , right =FALSE )))/length (licenza_media)

FrequenzaCumulateLicMed <- c(0,FrequenzaCumulateLicMed)
plot(classiDistrEmpCont , FrequenzaCumulateLicMed , type = "b", axes = FALSE , main = "Funzione di distribuzione empirica continua licenza media", col="green", xlab = "Classi", ylab = "Frequenze cumulate")
axis(1, classiDistrEmpCont, cex.axis=0.80)
axis(2, format (FrequenzaCumulateLicMed , digits = 2), cex.axis=0.80)
box ()

FrequenzaCumulateDip <- cumsum (table ( cut(diploma , breaks =classiDistrEmpCont , right =FALSE )))/length (diploma)

FrequenzaCumulateDip <- c(0,FrequenzaCumulateDip)
plot(classiDistrEmpCont , FrequenzaCumulateDip , type = "b", axes = FALSE , main = "Funzione di distribuzione empirica continua diploma", col="blue", xlab = "Classi", ylab = "Frequenze cumulate")
axis(1, classiDistrEmpCont, cex.axis=0.80)
axis(2, format (FrequenzaCumulateDip , digits = 2), cex.axis=0.80)
box ()

FrequenzaCumulateMat <- cumsum (table ( cut(maturita , breaks =classiDistrEmpCont , right =FALSE )))/length (maturita)

FrequenzaCumulateMat <- c(0,FrequenzaCumulateMat)
plot(classiDistrEmpCont , FrequenzaCumulateMat , type = "b", axes = FALSE , main = "Funzione di distribuzione empirica continua maturità", col="purple", xlab = "Classi", ylab = "Frequenze cumulate")
axis(1, classiDistrEmpCont, cex.axis=0.80)
axis(2, format (FrequenzaCumulateMat , digits = 2), cex.axis=0.80)
abline (h=0.5, lty=2, col="blue")
box ()

FrequenzaCumulateLau <- cumsum (table ( cut(laurea , breaks =classiDistrEmpCont , right =FALSE )))/length (laurea)

FrequenzaCumulateLau <- c(0,FrequenzaCumulateLau)
plot(classiDistrEmpCont , FrequenzaCumulateLau , type = "b", axes = FALSE , main = "Funzione di distribuzione empirica continua laurea", col="gold2", xlab = "Classi", ylab = "Frequenze cumulate")
axis(1, classiDistrEmpCont, cex.axis=0.80)
axis(2, format (FrequenzaCumulateLau , digits = 2), cex.axis=0.80)
box ()

boxplot(licenza_elementare_o_nessuno, main = "Boxplot Elementare", col = "red", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

boxplot(licenza_media, main = "Boxplot Media", col = "green", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

boxplot(diploma, main = "Boxplot Diploma", col = "blue", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

boxplot(maturita, main = "Boxplot Maturità", col = "purple", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

boxplot(laurea, main = "Boxplot Laurea", col = "yellow", horizontal = TRUE)
axis(side=2, 3:12, cex.axis=0.80)
box()

mediaCampionariaElementari <- mean(licenza_elementare_o_nessuno)
mediaCampionariaElementari

mediaCampionariaMedie <- mean(licenza_media)
mediaCampionariaMedie

mediaCampionariaDiploma <- mean(diploma)
mediaCampionariaDiploma

mediaCampionariaMaturita <- mean(maturita)
mediaCampionariaMaturita

mediaCampionariaLaurea <- mean(laurea)
mediaCampionariaLaurea


medianaElementari <- median(licenza_elementare_o_nessuno) 
medianaElementari

medianaMedie <- median(licenza_media) 
medianaMedie

medianaDiploma <- median(diploma) 
medianaDiploma

medianaMaturita <- median(maturita) 
medianaMaturita

medianaLaurea <- median(laurea) 
medianaLaurea

quantile(laurea)
quantile(laurea, type = 2)
quantile(laurea, type = 1)


varianzaElementari <- var(licenza_elementare_o_nessuno) 
varianzaElementari

varianzaMedie <- var(licenza_media) 
varianzaMedie

varianzaDiploma <- var(diploma)
varianzaDiploma

varianzaMaturita <- var(maturita) 
varianzaMaturita

varianzaLaurea <- var(laurea)
varianzaLaurea


deviazioneStandardElementari <- sd(licenza_elementare_o_nessuno)
deviazioneStandardElementari

deviazioneStandardMedie <- sd(licenza_media)
deviazioneStandardMedie

deviazioneStandardDiploma <- sd(diploma)
deviazioneStandardDiploma

deviazioneStandardMaturita <- sd(maturita)
deviazioneStandardMaturita

deviazioneStandardLaurea <- sd(laurea)
deviazioneStandardLaurea

cv <- function (x){
  sd(x)/abs(mean(x))
}

cvElementare <- cv(licenza_elementare_o_nessuno)
cvMedie <- cv(licenza_media)
cvDiploma <- cv(diploma)
cvMaturita <- cv(maturita) 
cvLaurea <- cv(laurea)

cvElementare
cvMedie
cvDiploma
cvMaturita 
cvLaurea
               
               
skw <-function (x){ n<-length (x)
m2  <-(n  -1)*var(x)/n
m3  <-  (sum(  (x-mean(x))^3))/n
m3/(m2  ^1.5)
}

skw(licenza_elementare_o_nessuno)
skw(licenza_media)
skw(diploma)
skw(maturita)
skw(laurea)


curt <-function (x){ n<-length (x)
m2  <-(n-1)*var  (x)/n
m4  <-  (sum(  (x-mean(x))^4)  )/n
m4/(m2^2)  -3
}

curt(licenza_elementare_o_nessuno)
curt(licenza_media)
curt(diploma)
curt(maturita)
curt(laurea)


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


matriceDistanzeEuclidea <- dist(matricePopolazionePerTitoliDiStudio, method = "euclidean", diag = FALSE, upper = FALSE)
dist(matricePopolazionePerTitoliDiStudio, method = "manhattan", diag = FALSE, upper = FALSE)
dist(matricePopolazionePerTitoliDiStudio, method = "maximum", diag = FALSE, upper = FALSE)
dist(matricePopolazionePerTitoliDiStudio, method =  "minkowski", 3, diag = FALSE, upper = FALSE)
dist(matricePopolazionePerTitoliDiStudio, method = "canberra", diag = FALSE, upper = FALSE)

hclust(dist(matricePopolazionePerTitoliDiStudio),method="complete")	
plot(hclust(dist(matricePopolazionePerTitoliDiStudio),method="complete"), main ="Dendrogramma esempio", xlab="Esempio",sub="")

numeroRighe <- nrow(matricePopolazionePerTitoliDiStudio) 
trHI <- (numeroRighe-1) *sum(apply(matricePopolazionePerTitoliDiStudio,2, var )) 
trHI

legameSingolo <- hclust(matriceDistanzeEuclidea,method="single")
legameSingolo$merge
legameSingolo$height

plot(hclust(dist(matriceDistanzeEuclidea),method="single"), main ="Dendrogramma esempio", xlab="Esempio",sub="")

plot(legameSingolo , hang = -1, xlab=" Metodo legame singolo",main = "Dendrogramma metodo legame singolo",sub ="suddivisione in 4 gruppi ")
axis( side =4, at=round (c(0, legameSingolo $ height ) ,2))
rect.hclust (legameSingolo , k = 4, border = " red ")

plot(c(0, legameSingolo$height ),seq (20 ,1) ,type="b", main=" Screeplot metodo legame singolo ",xlab=" Distanza  di  aggregazione",ylab="Numero  di  cluster ", col ="red ")

plot(legameCompleto , hang = -1, xlab=" Metodo legame completo",main = "Dendrogramma metodo legame completo",sub ="suddivisione in 4 gruppi ")
axis( side =4, at=round (c(0, legameCompleto $ height ) ,2))
rect.hclust (legameCompleto , k = 4, border = " red ")

plot(c(0, legameCompleto$height ),seq (20 ,1) ,type="b", main=" Screeplot metodo legame completo ",xlab=" Distanza  di  aggregazione",ylab="Numero  di  cluster ", col ="red ")

plot(legameMedio , hang = -1, xlab=" Metodo legame medio",main = "Dendrogramma metodo legame medio",sub ="suddivisione in 4 gruppi ")
axis( side =4, at=round (c(0, legameMedio $ height ) ,2))
rect.hclust (legameMedio , k = 4, border = " red ")

plot(c(0, legameMedio$height ),seq (20 ,1) ,type="b", main=" Screeplot metodo legame medio ",xlab=" Distanza  di  aggregazione",ylab="Numero  di  cluster ", col ="red ")

plot(metodoCentroide , hang = -1, xlab=" Metodo centroide",main = "Dendrogramma metodo centroide",sub ="suddivisione in 4 gruppi ")
axis( side =4, at=round (c(0, metodoCentroide $ height ) ,2))
rect.hclust (metodoCentroide , k = 4, border = " red ")

plot(metodoMediana , hang = -1, xlab=" Metodo mediana",main = "Dendrogramma metodo mediana",sub ="suddivisione in 4 gruppi ")
axis( side =4, at=round (c(0, metodoMediana $ height ) ,2))
rect.hclust (metodoMediana , k = 4, border = " red ")

taglio <-cutree (legameSingolo , k =3, h = NULL)
num <-table (taglio )
tagliolist <- list(taglio)
agvar <- aggregate (matricePopolazionePerTitoliDiStudio, tagliolist , var)[, -1]
trH1 <-(num [[1]] -1) * sum(agvar [1, ])
if(is.na(trH1)) trH1 <- 0
trH2 <-(num [[2]] -1) *sum(agvar [2, ])
if(is.na(trH2)) trH2 <- 0
trH3 <-(num [[3]] -1) *sum(agvar [3, ])
if(is.na(trH3)) trH3 <- 0
sum <- trH1 + trH2 +trH3
trB <- trHI -  sum 
trB/trHI

taglio <-cutree (legameSingolo , k = 4, h = NULL)
num <-table (taglio )
tagliolist <- list(taglio)
agvar <- aggregate (matricePopolazionePerTitoliDiStudio, tagliolist , var)[, -1]
trH1 <-(num [[1]] -1) * sum(agvar [1, ])
if(is.na(trH1)) trH1 <- 0
trH2 <-(num [[2]] -1) *sum(agvar [2, ])
if(is.na(trH2)) trH2 <- 0
trH3 <-(num [[3]] -1) *sum(agvar [3, ])
if(is.na(trH3)) trH3 <- 0
sum <- trH1 + trH2 +trH3
trB <- trHI -  sum 
trB/trHI

taglio <-cutree (legameSingolo , k = 5, h = NULL)
num <-table (taglio )
tagliolist <- list(taglio)
agvar <- aggregate (matricePopolazionePerTitoliDiStudio, tagliolist , var)[, -1]
trH1 <-(num [[1]] -1) * sum(agvar [1, ])
if(is.na(trH1)) trH1 <- 0
trH2 <-(num [[2]] -1) *sum(agvar [2, ])
if(is.na(trH2)) trH2 <- 0
trH3 <-(num [[3]] -1) *sum(agvar [3, ])
if(is.na(trH3)) trH3 <- 0
sum <- trH1 + trH2 +trH3
trB <- trHI -  sum 
trB/trHI

legameCompleto <- hclust(matriceDistanzeEuclidea,method="complete")
legameCompleto$merge
legameCompleto$height
legameCompleto$order
legameCompleto$labels
legameCompleto$method
legameCompleto$call
legameCompleto$dist.method

taglio <-cutree (legameCompleto , k = 4, h = NULL)
num <-table (taglio )
tagliolist <- list(taglio)
agvar <- aggregate (matricePopolazionePerTitoliDiStudio, tagliolist , var)[, -1]
trH1 <-(num [[1]] -1) * sum(agvar [1, ])
if(is.na(trH1)) trH1 <- 0
trH2 <-(num [[2]] -1) *sum(agvar [2, ])
if(is.na(trH2)) trH2 <- 0
trH3 <-(num [[3]] -1) *sum(agvar [3, ])
if(is.na(trH3)) trH3 <- 0
sum <- trH1 + trH2 +trH3
trB <- trHI -  sum 
trB/trHI

taglio <-cutree (legameCompleto , k = 5, h = NULL)


legameMedio <- hclust(matriceDistanzeEuclidea,method="average") 
legameMedio$merge

taglio <-cutree (legameMedio , k = 3, h = NULL)
num <-table (taglio )
tagliolist <- list(taglio)
agvar <- aggregate (matricePopolazionePerTitoliDiStudio, tagliolist , var)[, -1]
trH1 <-(num [[1]] -1) * sum(agvar [1, ])
if(is.na(trH1)) trH1 <- 0
trH2 <-(num [[2]] -1) *sum(agvar [2, ])
if(is.na(trH2)) trH2 <- 0
trH3 <-(num [[3]] -1) *sum(agvar [3, ])
if(is.na(trH3)) trH3 <- 0
sum <- trH1 + trH2 +trH3
trB <- trHI -  sum 
trB/trHI

matriceDistanzeEuclideaQuadrato <- matriceDistanzeEuclidea^2	
metodoCentroide <- hclust(matriceDistanzeEuclideaQuadrato,method="centroid")
metodoCentroide$merge

taglio <-cutree (metodoCentroide , k = 3, h = NULL)
num <-table (taglio )
tagliolist <- list(taglio)
agvar <- aggregate (matricePopolazionePerTitoliDiStudio, tagliolist , var)[, -1]
trH1 <-(num [[1]] -1) * sum(agvar [1, ])
if(is.na(trH1)) trH1 <- 0
trH2 <-(num [[2]] -1) *sum(agvar [2, ])
if(is.na(trH2)) trH2 <- 0
trH3 <-(num [[3]] -1) *sum(agvar [3, ])
if(is.na(trH3)) trH3 <- 0
sum <- trH1 + trH2 +trH3
trB <- trHI -  sum 
trB/trHI

metodoMediana <- hclust(matriceDistanzeEuclideaQuadrato,method="median")
metodoMediana$merge

taglio <-cutree (metodoMediana , k = 3, h = NULL)
num <-table (taglio )
tagliolist <- list(taglio)
agvar <- aggregate (matricePopolazionePerTitoliDiStudio, tagliolist , var)[, -1]
trH1 <-(num [[1]] -1) * sum(agvar [1, ])
if(is.na(trH1)) trH1 <- 0
trH2 <-(num [[2]] -1) *sum(agvar [2, ])
if(is.na(trH2)) trH2 <- 0
trH3 <-(num [[3]] -1) *sum(agvar [3, ])
if(is.na(trH3)) trH3 <- 0
sum <- trH1 + trH2 +trH3
trB <- trHI -  sum 
trB/trHI

km <- kmeans (matricePopolazionePerTitoliDiStudio, centers = 3 , iter.max = 20, nstart = 10)
km
km$betweenss/km$totss




rect.hclust (legameCompleto , k = 5, border = " red ")



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