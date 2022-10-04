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
