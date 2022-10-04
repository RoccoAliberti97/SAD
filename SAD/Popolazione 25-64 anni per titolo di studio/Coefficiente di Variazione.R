cv <- function (x){
  sd(x)/abs(mean(x))
}

cvElementare <- cv(licenza_elementare_o_nessuno)
cvMedie <- cv(licenza_media)
cvDiploma <- cv(diploma)
cvMaturita <- cv(maturita) 
cvLaurea <- cv(laurea)