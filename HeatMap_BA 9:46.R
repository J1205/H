library(dplyr)
library(gplots) 
library(RColorBrewer)

setwd("~/Desktop")
s = read.csv("b.csv", sep = ",", header = T, stringsAsFactors = F)
dim(s)

d <- s[,3:5] %>% as.matrix() 
rowv <- as.dendrogram(hclust (as.dist(1-cor(t(d), method ="pearson", use = "pairwise.complete.obs")), method="ward.D2"))
colv <- as.dendrogram(hclust (as.dist(1-cor(d , method ="pearson", use = "pairwise.complete.obs")), method="ward.D2"))

my_palette <- colorRampPalette(c("skyblue3","snow2","wheat3"))(n = 11)

heatmap.2(d, main="Heatmap", sub="", trace="none", symbreaks=TRUE, 
          margins = c(10, 15), lhei = c(2, 8), lwid = c(8, 20), symkey=TRUE, 
          col=my_palette, na.color="gray80", cexCol = 1, cexRow = 0.05, 
          Rowv=rowv, density.info="none", dendrogram="both", Colv=colv, 
          scale="row", srtCol=45)
