table(cut(licenza_elementare_o_nessuno,classiScelte))/length(licenza_elementare_o_nessuno)
barplot(table(cut(licenza_elementare_o_nessuno,classiScelte))/length(licenza_elementare_o_nessuno), col = 1:5, main = "Licenza Elementare", las=1, ylim = c(0,0.8))

table(cut(licenza_media,classiScelte))/length(licenza_media)
barplot(table(cut(licenza_media,classiScelte))/length(licenza_media), col = 1:5, main = "Licenza Media", las=1, ylim = c(0,0.6))

table(cut(diploma,classiScelte))/length(diploma)
barplot(table(cut(diploma,classiScelte))/length(diploma), col = 1:5, main = "Diploma", las=1, ylim = c(0,0.7))

table(cut(maturita,classiScelte))/length(maturita)
barplot(table(cut(maturita,classiScelte))/length(maturita), col = 1:5, main = "Maturità", las=1, ylim = c(0,0.7))

table(cut(laurea,classiScelte))/length(laurea)
barplot(table(cut(laurea,classiScelte))/length(laurea), col = 1:5, main = "Laurea", las=1, ylim = c(0,0.8))