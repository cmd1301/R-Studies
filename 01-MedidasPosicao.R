#Definindo a pasta de trabalho

setwd("C:/Users/Carlos Magno/Documents/PowerBI/Cap12")
getwd()

#Carregando o dataset

vendas <- read.csv("Vendas.csv", fileEncoding = "WINDOWS-1252")

#Resumo

str(Vendas)
summary(Vendas$Valor)
summary(Vendas$Custo)

#Média
?mean
mean(vendas$Valor)
mean(Vendas$Custo)

#Média Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

#Mediana
median(vendas$Valor)
median(vendas$Custo)

#Moda
#Criando a função
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}
#Obtendo a moda
resultado <- moda(vendas$Valor)
print(resultado)

resultado_custo <- moda(vendas$Custo)
print(resultado_custo)

#Criando gráfico de média de valor por estado com ggplot2
install.packages("ggplot2")
library(ggplot2)

#Cria o gráfico
ggplot(vendas) +
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col= "grey50") + 
  labs(title = "Média de Valor Por Estado")