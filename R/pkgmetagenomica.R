install.packages("available")

library("available")

#Buscar si el nombre del paquete ya existe
available::available("pkgMetagenomica")

#Crear la estructura inicial del paquete

usethis::create_package("pkgMetagenomica")
BiocManager::install("biocthis")

#Podemos agregar la estructura de biocthis
biocthis::use_bioc_pkg_templates()
#Pedir que Git ignore el archivo .Rproj
usethis::use_git_ignore("*.Rproj")
#Crear el repositorio de Github
usethis::use_github()

#Crear el archivo Description estilo Bioconductor

biocthis::use_bioc_description()

BiocManager::install("BiocStyle")

#Crear un archivo README
biocthis::use_bioc_readme_rmd()
devtools::build_readme()

biocthis::use_bioc_news_md()

biocthis::use_bioc_coc()
usethis::use_tidy_contributing()
biocthis::use_bioc_support()
biocthis::use_bioc_issue_template()
biocthis::use_bioc_citation()

usethis::use_r("subset_heatmap")
