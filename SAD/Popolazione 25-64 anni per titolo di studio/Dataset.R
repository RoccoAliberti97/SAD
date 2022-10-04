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