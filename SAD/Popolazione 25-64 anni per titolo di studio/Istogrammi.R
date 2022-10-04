laureaHistOutput<-hist(laurea ,freq=TRUE ,main=" Istogramma laurea", ylab="Frequenza assoluta delle classi ",col = 1:7)
str(laureaHistOutput)
laureaHistOutput$breaks
laureaHistOutput$counts
laureaHistOutput$density
laureaHistOutput$mids
laureaHistOutput$density * 2

laureaHistOutputRel<-hist(laurea ,freq=FALSE ,main=" Istogramma laurea", ylab="Frequenza relativa delle classi ",col = 1:7)
str(laureaHistOutputRel)
laureaHistOutputRel$breaks
laureaHistOutputRel$counts
laureaHistOutputRel$density
laureaHistOutputRel$mids