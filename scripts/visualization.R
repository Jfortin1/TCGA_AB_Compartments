# Read the data from the text file:
abRead <- function(file, chr=NULL){
	if (is.null(chr)){
		data <- read.table(file, head=TRUE)
	} else {
		data <- read.table(file, head=TRUE)
		data <- data[data$chr==chr,]
	}
	data
}

# barplot with nice colors:
abBarplot <- function(abdata, main = "", ylim = c(-2, 2), 
    top.col = "firebrick", bot.col = "grey50") {
	x <- abdata$eigen
    x <- as.numeric(x)
    n <- length(x)
    col <- rep(top.col, n)
    col[x < 0] <- bot.col
    barplot(x, ylim = ylim, bty = "n", xlab = "", ylab = "", 
        border = col, col = col, main = main, yaxt = "n")
}

# convert the data to a GRanges:
convert2GRanges <- function(abdata){
	library(GenomicRanges)
	gr <- GRanges(seqnames=abdata$chr,IRanges(start=data$start, end=data$end))
	genome(gr) <- "hg19"
	gr$eigen <- abdata$eigen
	gr$domain <- abdata$domain
	gr
}


file <- "../data/prad_tumor_compartments_100kb.txt" # Should be path to the file
data <- abRead(file, "chr14")
abBarplot(data)

# To convert to a GRanges:
gr <- convert2GRanges(data)


