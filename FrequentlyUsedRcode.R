##########################################################
#
# Frequently Used R code
#
##########################################################

##making Sample dataframe

df1 <- data.frame(id = c(1,2,3),
                  atrbt1 = c('a','b','c'),
                  atrbt2 = c('d','e','f'))

df2 <- data.frame(id = c(2,3,4),
                  atrbt3 = c('a','b','c'),
                  atrbt4 = c('d','e','f'))


##outer join

#match()
df1$atrbt3 <- df2$atrbt3[match(df1$id,df2$id)]

