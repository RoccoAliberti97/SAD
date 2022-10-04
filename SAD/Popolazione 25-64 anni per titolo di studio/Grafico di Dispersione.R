plot(licenza_media,laurea, main = "Percentuale conseguimento medie in funzione perncentuale laureati",  xlab = "Percentuale medie", ylab = "Percentuale laurea", col ="red")
abline (h=mediaCampionariaLaurea, col="green")
abline (h=medianaLaurea, lty=2, col="blue")
abline (v=mediaCampionariaMedie, col="green")
abline (v=medianaMedie, lty=2, col="blue")


pairs(matricePopolazionePerTitoliDiStudio,
      main = "Scatterplot per tutte le coppie di variabili")