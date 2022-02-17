# Estatística Básica

# Tabela de Frequência

# Definindo a pasta de trabalho
setwd("C:/Users/Carlos Magno/Documents/PowerBI/Cap12")
getwd()

# Carregando os dados
dados <- read.table("Usuarios.csv",
                    dec = ".",
                    sep = ",",
                    h = T,
                    fileEncoding = "windows-1252")

# Visualizando e sumarizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)

# Tabela de frequencias absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de frequencias relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Porcentagem
p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)

# Adiciona linhas de total
View(freq)
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "total"
View(freq)

# Tabela final com todos os calores
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))

tabela <- cbind(freq,
                freq_rel = round(freq_rel, digits = 2),
                p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela)