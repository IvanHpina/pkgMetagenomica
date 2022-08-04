expresion_genes <- matrix(rnorm(100), nrow = 10)
rownames(expresion_genes) <- paste0("gene_",letters[1:10])
colnames(expresion_genes) <- paste0("especie_",letters[1:10])


subset_heatmap <- function(x, especies = NULL, genes = NULL) {
  #Subset matrix
  x_subset <- x[genes,especies]

  #Plot heatmap
  ComplexHeatmap::Heatmap(x_subset,
                          cluster_columns = FALSE,
                          heatmap_legend_param = list(title = "log2"))
}

subset_heatmap(expresion_genes,
               especies = c("especie_a", "especie_b","especie_c"),
               genes = c("gene_d","gene_e","gene_f"))

filter()
