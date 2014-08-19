library(reshape2)
library(ggplot2)

files <- list.files()
files <- files[grepl("experiment\\d|param-scan-report\\d", files)]
total.data <- NULL

for (f in files) {
	data <- read.table(f, header = TRUE, sep = "\t",
		stringsAsFactors = FALSE)
	data <- melt(data, id = "Time")
	data$cond <- strsplit(f, "\\.")[[1]][1]
	total.data <- rbind(total.data, data)
}

len <- length(unique(total.data$variable))

p <- ggplot(total.data, aes(Time, value)) + facet_wrap(~ variable, 
	scales = "free_y") + geom_line(aes(color = cond))
pdf(file = paste("plots.pdf", sep=""), width = len,
	height = len/2)
print(p)
dev.off()
