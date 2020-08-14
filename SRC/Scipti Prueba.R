A <- read_excel("H:/ICE/2020-2/A.xlsx")
B <- read_excel("H:/ICE/2020-2/B.xlsx")

Tabla_Registro <- merge(A, B, bY = "NUMERO_DOCUMENTO")

names(A)
names(B)

R <- rbind(A, B)

Fuente<- sample(c(""), size = 20, replace = TRUE) 
Factor<- sample(c(""), size = 20, replace = TRUE)



Base_ <- cbind(R, Fuente)
Base_1 <- cbind(Base_, Factor)

Base_1$Fuente <- ifelse(Base_1$NUMERO_DOCUMENTO == A$NUMERO_DOCUMENTO, "A","B")
Base_1

write.csv(Base_1, file = "Output.csv")
