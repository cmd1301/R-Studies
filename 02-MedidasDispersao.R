#Estatística Básica

# Parte 2 - Medidas de Dispersão

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/Carlos Magno/Documents/PowerBI/Cap12")
getwd()

# Carregando o dataset
vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Variância
var(vendas$Valor)

# Desvio Padrão
sd(vendas$Valor)

# Medidas de Tendência Central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

# Explorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.2))
IQR(vendas$Valor)
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))