

require(tidyr)
require(dplyr)
library(karyoploteR)

#step 1: reading in testdata from github
testdata <- "https://raw.githubusercontent.com/umccr/10x/master/telomeres/data/processed/hg38_igv_manual_by_side.bed"

plotTelo <- function(bed){

  bed <- read.table(bed)
  names(bed) = c("chrom_and_strand", "start", "end")
  #step 2: separating the chromosome and strands into different columns
  bed = separate(bed, 1, into = c("chromosome", "strand"), sep="_", remove = TRUE) #using tidyverse's function
  bed
  #step 3: replacing the r with "-"s for use as strand data
  bed$strand <- sub("r", "-", bed$strand)
  bed
  #step 3: replacing the r with "+"s for use as strand data
  bed$strand <- sub("f", "+", bed$strand)
  bed

  bed
  #step 4: plotting human chromosomes
  kp <- plotKaryotype()
  #step 5: adding base numbers
  kpAddBaseNumbers(kp)
  #step 6: plotting the rectangle indicators
  #using chromosomoe, start and end coordinates asinput
  kpRect(kp, chr = bed$chromosome, x0 = bed$start, x1= bed$end,
         y0 = 0.0, y1 =0.5, col = "yellow")
}



