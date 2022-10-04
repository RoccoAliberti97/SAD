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