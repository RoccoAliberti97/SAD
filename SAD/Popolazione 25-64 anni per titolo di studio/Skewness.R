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