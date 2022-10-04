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