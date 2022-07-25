2*(3+5/2)

2*((3+5)/2)

2/3+5

2%/%3+5

2%%3

2^3*5

2^-4

2^(-4)

725%/%7

725%%7
# D = d * q + r
# r = D - d * q
# q = D %/% d
# x = D %% d 
725 - 103*7

pi

2*pi

3^pi

pi^2

Inf

-Inf

NA

NaN

5/0

0/0

2^50# = 1.1259e+15 = 1125900000000000 

2 ^(-15) # 3.051758e-05 = 0.00003051758

c(2^30, 2^(-15), 1, 2, 3/2)
    # Cuando dos números tienen notación cientifica, los demás aparecerán en notación cientifica
    # a pesar de que sean números pequeños como 1, 2, 3/2, etc.

sqrt(25)

1-exp(-1)

log(pi)

log(32, 2)

log(32, base = 2)
log(base=2, 32)

abs(-pi)

factorial(7)

factorial(4)

factorial(0)

choose(5,3)

choose(3,5)

log(4^6, 4)

6^log(4,6)

choose(5,2)

# Las funciones trigonométricas en R vienen con argumentos en radianes (pi), por lo que será necesario
# convertirlas

sin(0)

sin(pi/2) # Se piensa como la circunferencia unitaria que enseño Raggi

# Si se quiere sacar el seno de 60 grados se multiplica por pi/180
# (en general, es para convertir de grados a radianes)

sin(60*pi/180)

cos(60*pi/180)

sinpi(1/2) # = sin (pi/2)

tan(pi) # -1.224647e-16 ~ 0

tan(pi/2) # 1.633124e+16 ~ Inf

asin(0.8660254) #arc sin en radianes

asin(0.8660254) * 180 /pi #arc sin en grados

asin(5) #arc sin x in [-1,1]

acos(-8)


# Sesion 23

print(sqrt(2),10)
    # Va a imprimir las 10 primeras cifras

round(sqrt(2), 3)
    # Va a mostrar el número redondeado a 3 cifras

floor(sqrt(2))
    # Función piso

ceiling(sqrt(2))
    # Función techo

trunc(sqrt(2))
    # Trunca, se queda solo con la parte entera, como la v.a. K_x

sqrt(2)^2-2
    # Se puede incurrir en estos errores donde no muestra directamente el cero

round(sqrt(2), 4)^2

2^50
  # Aqui solo nos muestra la notación científica
print(2^50, 15)
  # Aqui nos muestra la notación exacta, nos dice quienes son esos 15 números

print(2^50, 2)

print(pi, 22)
#3.141592653589793115998
#3.141592653589793238462
  # Cuando a R se le pide más de 16 digitos empiezan a ver errores, se puede notar en los primeros
  # 16 números de pi

round(1.25,1)
round(1.35,1)
round(sqrt(2),0)  #Este round(x,0) es un floor()
round(sqrt(2))    #Si no se especifica cuantos, lo redondea a 0 decimales

round(digits = 5, sqrt(2))
round(5, sqrt(2))


floor(-3.45)
ceiling(-3.45)
trunc(-3.45)

# Sesion 24
x = (pi^2)/2
x

y <- cos(pi/4)
y

sin(pi/4) + cos(pi/4) -> z
z

edad <- 30
str(edad)

nombre = "Juan Gabriel"

HOLA = 1
hola = 5

pi.4 = 4*pi
pi.4

x = 2
x = x^2

x = sqrt(x)

#Sesion 25

## Función f(x) = x^3 - (3^x)* sen(x)
f = function(x) {
  x^3 - (3^x) * sin(x)
}

f(4) # 4^3 - 3^4 * sin(4)
f(5)
f(pi/2)



suma1 <- function(t){
  t + 1
}
suma1(6)
suma1(-5)


product <- function(x, y){
  x*y
}
product(5,7)



g <- function(x,y,z) {
  exp(x^2 + y^2) * sin(z)
}
g(1, 2, 3)
g(1, -1, pi)



# Una función puede tener varias instrucciones si las separamos con ";"
suma5 <- function(numero){
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  suma1(numero) # Este es el output
}

suma5(3)

ls() 
      # Sirve para listar todo lo que hemos creado

rm(product)
      # "remove" sirve para eliminar algun objeto que ya no usaremos

ls()

rm(list = ls())
      # Es para borras todos  


# Sesion 26

opBasic=function(a,b){
  print("Suma")
  print(a+b)
  
  print("Resta")
  print( paste( sprintf("%i - %i =",a,b), a-b ) )
  print( paste(sprintf("%i - %i",b,a), b-a))
  
  print("Producto")
  print(a*b)
  
  print("Cociente de la divisón entera")
  print(paste(sprintf("%i : %i= ",a,b),a%/%b))
  print(paste("con residuo: ",a%%b))
  print(paste(sprintf("%i : %i= ",b,a),b%/%a))
  print(paste("con residuo: ",b%%a))
  
  
}
opBasic(6,4)

##### La funcion sprintf: 
x=3
y=5

paste("La suma es:",x+y)

sprintf("La suma es %i + %i = ",x,y)
      # Esto es lo que se debe meter en el primer argumento de la funcion paste


#De modo que el resultado final es
paste(sprintf("La suma es %i + %i= ",x,y), x+y)

#Si esto se mete dentro de una función debe ser con la función print



# Sesion 27

class(3+2i)

(3+2i)*5

(3+2i)*(-1+3i)

(3+2i)/(-1+3i)

#Esto es un error:
#2+7*i

pi + sqrt(2)i
      #No funciona puesto que no es un número racional o entero

# Podemos usar esta función que nos permite hacer lo que queriamos en la isntrucción de arriba
complex(real = pi, imaginary = sqrt(2)) -> z1
z1


sqrt(-5)
sqrt(as.complex(-5))

#La raíz cuadrada devuelve, de las dos soluciones la de
#Re(z)>0, para obtener la otra,  hay que multiplicar por -1
sqrt(3+2i) # z^2 = 3+2i
exp(3+2i)
sin(3+2i)
cos(3+2i)

#Módulo = sqrt(Re(z)^2 + Im(z)^2)
Mod(z1)


#Argumento = arctan(Im(z)/Re(z))
# = arccos(Re(z)/Mod(z))
# = arcsin(Im(z)/Mod(z))
# va de (-pi, pi]
Arg(-1+0i)
Arg(-1-2i)


#Conjugado = Re(z)- Im(z)i
Conj(z1)


#Parte Real y Parte Imaginaria
Re(z1)
Im(z1)

### z = Mod(z) * (cos(Arg(z))+sin(Arg(z))i)
complex(modulus = 2, argument = pi/2) -> z2
z2
Mod(z2)
Arg(z2)
pi/2



rm(list=ls())
