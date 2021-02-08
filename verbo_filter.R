# Librería

install.packages('dplyr') # Para instalar el paquete
library(dplyr)            # Para cargar el paquete

# Base de datos de ejemplo

titulo <- c('Todo ese ayer', 'Una tierra prometida', 
            'La Presa', 'La casa de los espiritus', 
             'Tiempos recios', 'Paraíso Travel', 
            'Cien años de soledad', 'Steve Jobs')
autor <- c('Oscar Vela', 'Barack Obama',
           'Irene Nevirovsky','Isabel Allende',
           'Vargas Llosa', 'Jorge Franco', 'Garcia Marquez',
           'Walter Isaacson')
editorial <- c('Alfaguara','Debate', 'Debate', 
                'Debolsillo','Alfaguara',
               'Alfaguara', 'Debolsillo', 'Debate')
categoria <- c('Latinoamericana', 'Biografias', 
               'Biografia', 'Literatura Universal',
               'Latinoamericana', 'Latinoamericana', 'Latinoamericana', 'Biografias')
precio <- c(52000, 79000, 63000, 36000, 54000,  56000, 41000, 79000)
lujo <- c(TRUE, TRUE, TRUE,  FALSE, TRUE,  TRUE, FALSE,TRUE)

dat <- data.frame(titulo=titulo, autor=autor, 
                  editorial=editorial, categoria=categoria, 
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
