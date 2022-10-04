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