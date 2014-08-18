library(reshape2)
library(ggplot2)

# number of components in the data table
comp.num <- 12
# initial time
init.step <- 0

all.est <- NULL

# import the data table with estimated wt time courses
wt_est <- read.table(paste("wt_est.txt", sep=""), 
	header = TRUE, sep = "\t", stringsAsFactors = FALSE)
wt_est <- melt(wt_est, id = "time")
wt_est$cond <- "wt"
wt_est$run <- "est"

# import the data table with estimated pten time courses
pten_est <- read.table(paste("pten_est.txt", sep=""), 
	header = TRUE, sep = "\t", stringsAsFactors = FALSE)
pten_est <- melt(pten_est, id = "time")
pten_est$cond <- "pten"
pten_est$run <- "est"

# import the data table with experimental wt time courses
wt_exp <- read.table("wt_lit.txt", header = TRUE, sep = "\t", 
	stringsAsFactors = FALSE)
wt_exp <- melt(wt_exp, id = "time")
wt_exp$cond <- "wt"
wt_exp$run <- "exp"

# import the data table with experimental pten time courses
pten_exp <- read.table("pten_lit.txt", header = TRUE, sep = "\t", 
	stringsAsFactors = FALSE)
pten_exp <- melt(pten_exp, id = "time")
pten_exp$cond <- "pten"
pten_exp$run <- "exp"



total.data <- rbind(wt_est, pten_est, wt_exp, pten_exp)
all.est <- rbind(all.est, total.data)

total.data.pip <- subset(total.data, total.data$variable == "pi45p2" | 
	total.data$variable == "pip3")

p <- ggplot(total.data.pip, aes(x=time, y=value)) + facet_wrap(~ variable, 
	ncol = 1, scales = "free_y") + geom_line(aes(color = cond, linetype = run))
pdf(file = paste("pips.pdf", sep=""), width = 6, height = 4)
print(p)
dev.off()

total.data.rest <- subset(total.data, total.data$variable != "pi45p2" & 
	total.data$variable != "pip3")

p1 <- ggplot(total.data.rest, aes(x=time, y=value)) + facet_wrap(~ variable, 
	ncol = 4, scales = "free_y") + geom_line(aes(color = cond))
pdf(file = paste("rest.pdf", sep=""), width = 10, height = 3)
print(p1)
dev.off()

# combine all components used for estimation corresponding to the best objective
# values in one plot

all.est.pip <- subset(all.est, all.est$variable == "pi45p2" | 
		all.est$variable == "pip3")

p <- ggplot(all.est.pip, aes(x=time, y=value)) + facet_grid(variable ~ ., 
	scales = "free_y") + geom_line(aes(color = cond, linetype = run))
pdf(file = "pips_all.pdf", width = 6, height = 3)
print(p)
dev.off()
