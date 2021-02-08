# Librería

install.packages('dplyr') # Para instalar el paquete
library(dplyr)            # Para cargar el paquete

# Base de datos de ejemplo

titulo <- c('El Principito', 'Inglés Básico', 'Steve Jobs', 
            'Cuentos Completos', 'La casa de los espiritus', 
            "Cien años de soledad", "Del amor y otros demonios", 
            "La Iliada", "Orgullo y prejuicio", "Diccionario escolar")
autor <- c("De Saint Exupery", "Ghio D.A", "Walter Isaacson",
           "Allan Poe","Isabel Allende", "Garcia Marquez",
           "Garcia Marquez","Homero", "Jane Austen", "-")
editorial <- c("Emece","Editorial Solar", "Debate", "Espuma", 
               "Debolsillo", "Debolsillo","Debolsillo", "Comcos",
               "Juventud","Larousse")
categoria <- c("Literatura Universal", "Idiomas", "Biografias", "Literatura Universal", "Latinoamericana", "Literatura Universal", "Latinoamericana", "Literatura Universal", "Literatura Universal", "Idiomas")
precio <- c(36000, 28000, 79000, 165000, 41000, 36000, 26000, 23400, 56000, 16000)
lujo <- c(FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE,FALSE)

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
