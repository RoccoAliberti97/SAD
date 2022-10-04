table(cut(licenza_elementare_o_nessuno,classiScelte))
barplot(table(cut(licenza_elementare_o_nessuno,classiScelte)), col = 1:5, main = "Licenza elementare", las=1, ylim = c(0,17))

table(cut(licenza_media,classiScelte))
barplot(table(cut(licenza_media,classiScelte)), col = 1:5, main = "Licenza media", las=1, ylim = c(0,12))

table(cut(diploma,classiScelte))
barplot(table(cut(diploma,classiScelte)), col = 1:5, main = "Diploma", las=1, ylim = c(0,14))

table(cut(maturita,classiScelte))
barplot(table(cut(maturita,classiScelte)), col = 1:5, main = "Maturità", las=1, ylim = c(0,14))

table(cut(laurea,classiScelte))
barplot(table(cut(laurea,classiScelte)), col = 1:5, main = "Laurea", las=1, ylim = c(0,17))