###########################
### Script Completeness ###
###########################
# Mauricio Serna González #
######### Agosto 2019 #####

###########################
####### NO CAMBIAR ########
# Paquetes
library(ape)
library(stringr)

# Función
completeness <- function(wd, nombre.nexus){
  # Set working directory
  setwd(wd)
  # Leer el archivo nexus
  nexus <- read.nexus.data(nombre.nexus)
  # Hacer matriz de lista de secuencias
  alineamiento.matriz <- do.call(rbind, nexus)
  # Contar los gaps '-'
  gaps <- length(grep('-', alineamiento.matriz))
  respuesta <- 100-(gaps*100/(length(nexus)*length(nexus[[1]])))
  
  return(respuesta)
}
####### NO CAMBIAR ########
###########################

###########################
######### EDITAR ##########

# Editar los dos siguientes objetos según el path donde esté el archivo nexus y el nombre de este archivo 
# Editar el path
wd <- '/Users/mauricioserna/Desktop/Cosas\ Mias/Eafit/Semillero\ Biodiversidad/La_Candelaria/Articulo_paper/V.0.4/CYTB_V.0.4/Phyllostomidae/Chiroderma'

# Leer el archivo nexus
nombre.nexus <- 'Chiroderma_alignment.VOUCHERS_actualizado.ONLY.nex'


completeness(wd, nombre.nexus)


