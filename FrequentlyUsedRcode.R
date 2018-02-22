##########################################################
#
# Frequently Used R code
#
##########################################################

##making Sample dataframe

df1 <- data.frame(id = c(1,2,3),
                  attr1 = c('a','b','c'),
                  attr2 = c('d','e','f'))

df2 <- data.frame(id = c(2,3,4),
                  attr3 = c('a','b','c'),
                  attr4 = c('d','e','f'))


##outer join

#match()
df1$attr3 <- df2$attr3[match(df1$id,df2$id)]

#sql
install.packages("sqldf")
library(sqldf)
df3 <- sqldf("select df1.*,df2.attr3 
              from df1 left outer join df2
              on df1.id = df2.id")

