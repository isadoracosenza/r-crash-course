x <- 10
y = 10 # also works but not the convention

y # typing a variable name prints it
print(x) # also works

# data types

a <- 5 # stores as 5.0
ab <- 5L # stores as actual integer

c <- "hello" #character (string)
d <- TRUE #logical
e <- 2 + 3i # complex

class(a) # how I percieve it
class(ab)
typeof(ab) # how the computer actually stores

# basic operators

5 + 3; 5 - 3; 5 * 3; 5 / 3; 5 %% 3; 5^2;

5 == 3; 5 != 3; 5 > 3; 5 <= 3; 5 < 3

TRUE & FALSE # e
TRUE | FALSE # ou
!TRUE        # ~

##### Vectors: the heart of R #####

# Everything in R is usually a vector. Even a single number is a vector of length 1
# Most code avoid explicit loops in favor of operating on whole vectors at once
# INDEX STARTS AT 1.

v <- c(1, 2, 3, 4, 5)  # combine values into a vector
v2 <- c("a", "b", "c") # custom sequence
1:10                   # sequence shortcut - printa 1 e printa 10
seq(1, 10, by = 2)
rep(1, times = 5)

# Vectorized operations: note que não precisa de loop

v * 2                     # multiplica cada item vezes 2

v + c(10, 20, 30, 40, 50) # soma v com cada item

######### Indexação: #########

v[1]    # vetor v, posição 1
v[2:4]  # posição 2, 3 e 4
v[-1]   # todos os elementos menos o 1° 
v[v>2]  # elementos >2

######### Estruturas de Dados Base #########

# 1 - vetor:         1D               same type     - c()
# 2 - matriz:        2D               same type     - matrix()
# 3 - list:          1D               mixed types   - list
# 4 - dataframe:     2D               mixed types   - data.frame()
# 5 - factor:        cat. variable         -        - factor()

m <- matrix(1:6, nrow=3, ncol=2)
# matriz não retorna null.

#        1    4
#        2    5
#        3    6

m[1,2] # linha 1, coluna 2

#lista que é conceitualmente um dicionário
lst <- list(name = "Alice", age = 30, scores = c(90, 85))

lst$name
lst[["scores"]]

lst2 <- list(90, "beterraba", "oi", 7.2)
lst2[[3]]

df <- data.frame(name = c("Alice", "Bob"), age = c(30L, 25L))
df$name

df[1, ]
df[ ,1]
df[, "name"]

nrow(df); ncol(df)

# Estrutura de dados projetada especificamente para armazenar variáveis categóricas com número fixo e limitado de valores possíveis, como gênero, faixas de renda, níveis de escolaridade, etc
f <- factor(c("low", "high", "medium"), levels = c("low", "high", "medium"))
f

# para modelagem estatística: funções de regressão, ANOVA, ML, precisam saber exatamente quais são as categorias possíveis para gerar variáveis dummy (binárias)
# fatores podem ser configurados como ordenados com ordered = TRUE)

############## Missing Data ##############

x <- c(1, NA, 3)
is.na(x) # retorna booleano de quem é nulo
sum(x, na.rm = TRUE) # permite somar se remover na

################ Control Flow ################

#x <- 1 

#if (x > 0) {
#  print("positive")
#} else if (x == 0) {
#  print("zero")
#} else {
#  print("negative")
#}

#for (i in 1:5) {
#  print(i)
#}

#i <- 1
#while (i <= 5) {
#  print(i)
#}

# obs: R é vetorizado, então muitas vezes loopings são desnecessários
# prefira operações de vetores ou família de funções "apply"

########## Funções ##########

func <- function(x, y = 10) {
  result <- x + y
  return(result)
}

func(5)
func(5, 20)

########## Built-in Functions ##########

v <- c(1:10)
v

length(v); sum(v); mean(v); median(v); sd(v); max(v); min(v);

str(df) #structure of df

summary(df)

head(df); tail(df)
sort(v); order(v)
paste("a", "b") # concatena as strings "ab"
paste0("a", "b") # no separator "ab"
nchar('hello') # número de caracteres/length


