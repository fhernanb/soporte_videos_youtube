# instalar libreria
install.packages("tidyverse")
library(tidyverse)

# base de datos
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
categoria <- c('Latinoamericana', 'Biografia', 
               'Biografia', 'Literatura Universal',
               'Latinoamericana', 'Latinoamericana', 
               'Literatura Universal', 'Biografias')
precio <- c(52000, 79000, 63000, 36000, 54000,  56000, 41000, 79000)
lujo <- c(TRUE, TRUE, TRUE,  FALSE, TRUE,  TRUE, FALSE,TRUE)

dat <- data.frame(titulo=titulo, autor=autor, 
                  editorial=editorial, categoria=categoria, 
                  precio=precio, lujo=lujo)

# crear una nueva variable
dat %>% 
  mutate(descuento = precio - precio*0.20)

# otro ejemplo: iva
dat %>% 
  mutate(precio_iva = precio + precio*0.19)
