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