# Aula 2 é focada em visualização de dados

# Família Apply: Alternativa vetorizada aos loops

nums <- list(house = 1:5, 6:10, 11:15)
print(nums)

sapply(nums, sum) # retorna um vetor/matriz

lapply(nums, mean) # retorna sempre lista

# apply: para matrizes

# 1. por linha
# 2. por coluna

m <- matrix(1:6, nrow = 2)

apply(m, 1, sum)
apply(m, 2, mean)

# mapply: aplica função a múltiplos vetores em paralelo
mapply(function(x, y) x + y, 1:3, 4:6)

# Regra prática: se você está pensando em usar um for para 
# transformar cada elemento de algo, provavelmente existe 
# uma função apply melhor.

######### dplyr #########

#install.packages("dplyr")
#library(dplyr)

df <- data.frame(
  nome = c("ana", "bruno", "carla", "davi"),
  idade = c(28, 35, 22, 41),
  cidade = c("sp", "rj", "sp", "bh") 
)

filter(df, idade > 25)
select(df, nome, idade)
arrange(df, desc(idade))
mutate(df, idade_em_10_anos = idade + 10)
summarize(df, media_idade = mean(idade))

######### Operador Pipe #########

# Encadeia operações, lendo de cima para baixo
# é assim que um código moderno de R é escrito:

df %>%
  filter(cidade == "sp") %>%
  select(nome, idade)  %>%
  arrange(desc(idade)) 

# Combinação mais usada:

df %>%
  group_by(cidade) %>%
  summarise(media_idade = mean(idade), total = n())

install.packages("ggplot2")
library

#df %>%
