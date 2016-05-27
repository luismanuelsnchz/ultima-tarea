library(Rsamtools)
library(GenomicAlignments)

gal<-readGAlignments("/Users/luismanuelespinosasanchez/Documents/BioinfInvRepro2016-II/Practicas/Uni7/data/BRCA1_BRCA2_Panel_60.bam")
length(gal)
strand(gal)
table(strand(gal))
scanBamWhat()
ranges(gal)[1:5]
gr <- GRanges(seqnames="chr14", ranges=ranges(gal)[1:5])
gr

flag0<-scanBamFlag(isDuplicate = FALSE, isNotPassingQualityControls = FALSE)
param0 <- ScanBamParam((flag=flag0))