# Librería

install.packages('dplyr') # Para instalar el paquete
library(dplyr)            # Para cargar el paquete

# Base de datos de ejemplo

titulo <- c('El Principito', 'Inglés Básico', '')
autor <- c()
edicion <- c()
categoria <- c()
precio <- c()
lujo <- c(TRUE, FALSE, FALSE, TRUE, ...)

dat <- data.frame(titulo=titulo, autor=autor, 
                  edicion=edicion, categoria=categoria, 
                  precio=precio, lujo=lujo)

# Usando el verbo filter

# Forma 1
filter(dat, categoria == 'Lit....')

# Forma 2
dat %>% 
  filter(categoria == 'Lit...')

dat %>% 
  filter(categoria == 'Lit...', lujo == FALSE)

dat %>% 
  filter(categoria == 'Lit...', lujo == FALSE) -> sub_dat
