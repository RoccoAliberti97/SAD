plot(
  ecdf(laurea),
  main="Funzione di distribuzione empirica discreta relativo alle lauree ", verticals = TRUE , col="red")
ecdf(laurea)(17)


classiDistrEmpCont <-c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50)	