# Locate the file repository
setwd("C:/Users/Carlos Magno/Documents/PowerBI/Cap12")
getwd()

# Open file
notas <- read.csv("Notas.csv")

# Resumo
summary(notas) # dados específicos
head(notas)
tail(notas)
str(notas) # tipos de dados

# Média cada turma
mean(notas$TurmaA)
mean(notas$TurmaB)

# Variabilidade
sd(notas$TurmaA)
sd(notas$TurmaB)

# coeficiente de variação
mediaA <- mean(notas$TurmaA)
mediaB <- mean(notas$TurmaB)

sdA <- sd(notas$TurmaA)
sdB <- sd(notas$TurmaB)

coefA <- (sdA/mediaA)*100
coefB <- (sdB/mediaB)*100

print(coefA)
print(coefB)

# Nota mais presente
moda <- function(v) {
  nota_freq <- unique(v)
  nota_freq[which.max(tabulate(match(v, nota_freq)))]
}
resultA <- moda(notas$TurmaA)
print(resultA)
resultB <- moda(notas$TurmaB)
print(resultB)