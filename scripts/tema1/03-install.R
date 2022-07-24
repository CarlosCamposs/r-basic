
# Primer ejemplo
install.packages("tidyverse", dep = TRUE)
library(tidyverse)
    # Al poner dep=TRUE estamos haciendo que instale/actualice todas las dependencias
    # de este paquete


#Segundo paquete, crea cuadrados mágicos
install.packages("magic", dep = TRUE)
library(magic)

magic(6)


# Cuando se reinicia una sesión de R algunos paquetes que estaban cargados, ya no lo estarán

installed.packages()