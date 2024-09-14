n <- 15
n
typeof(n)

l2 <- T 
l2
typeof(l2)

# VECTOR

vector <- c(1,2,3,4,5)
vector
is.vector(vector)

# MATRIX

m1 <- matrix( c(T,T,F,F,T,F), nrow = 2)
m1

m2 <- matrix(c("a","b",
               "c","d"),
             nrow = 2,
             byrow = T)
m2

# ARRAY
  
a1 <- array(c(1:24), c(4,3,2))
a1

# DATAFRAME

vNumeric <- c(1,2,3)
vCharacter <- c("a", "b", "c")
vLogical <- c(T,F,T)

dfa <- cbind(vNumeric, vCharacter, vLogical)
dfa

df <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df

# LIST

lNumeric <- c(1,2,3)
lCharacter <- c("a", "b", "c","d")
lLogical <- c(T,F,T,F,F,T,F,T,T)

list1 <- list(lNumeric, lCharacter, lLogical)
list1

list2 <- list(lNumeric,lCharacter,lLogical, list1)
list2














