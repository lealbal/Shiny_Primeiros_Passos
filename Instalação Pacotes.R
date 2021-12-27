# Instalação e Carregamento de Todos os Pacotes ---------------------------

pacotes <- c("tidyverse","knitr","kableExtra",
             "gapminder", "ggforce", "gh", "globals", "openintro", "profvis", 
             "RSQLite", "shiny", "shinycssloaders", "shinyFeedback", 
             "shinythemes", "testthat", "thematic", "tidyverse", "vroom", 
             "waiter", "xml2", "zeallot"
              ) 

if(sum(as.numeric(!pacotes %in% installed.packages())) != 0){
  instalador <- pacotes[!pacotes %in% installed.packages()]
  for(i in 1:length(instalador)) {
    install.packages(instalador, dependencies = T)
    break()}
  sapply(pacotes, require, character = T) 
} else {
  sapply(pacotes, require, character = T) 
}
rm(pacotes)

