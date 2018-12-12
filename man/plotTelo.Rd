\name{plotTelo}
\alias{plotTelo}
\title{Plotting Telomeric Regions}
\usage{
plotTelo(bed)
}
\description{
This function plots the telomeric regions in the human chromosomes from your input data. It does this in the form of rectangular markers above the chromsomes.
}

\arguments{
\item{bed}{A bed file or URL to a bed file with the chromosome names, chromosome strands, start and end coordinates. Note that chromsomes with no specificied coordinates must have start and end equal to 0 in the bed file.}
}
\examples{
plotTelo("https://raw.githubusercontent.com/umccr/10x/master/telomeres/data/processed/hg38_igv_manual_by_side.bed")

}
