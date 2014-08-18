library(reshape2)
library(ggplot2)

data.files <- list.files("data")
total.data <- NULL

for (f in data.files) {
	data <- read.table(paste0("data/", f), header = TRUE, sep = "\t",
		stringsAsFactors = FALSE)
	data <- melt(data, id = "time")
	data$cond <- strsplit(f, "\\.")[[1]][1]
	total.data <- rbind(total.data, data)
}

all.est <- total.data

p <- ggplot(total.data, aes(x=time, y=value)) + facet_wrap(~ variable, 
	scales = "free_y") + geom_line(aes(color = cond))
pdf(file = paste("plots.pdf", sep=""), width = 6, height = 4)
print(p)
dev.off()
