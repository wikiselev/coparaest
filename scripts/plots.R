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
time.step.num <- length(wt_est[ ,1])
colnames(wt_est) <- c("time", "pi45p2", "pi3k_act", "pten", "pip3", "pi3k", "lig", 
	"rec", "pi45p2_pi3k_act", "pip3_pten", "rec_lig", "rec_dimer", "rec_phosp")
wt_est <- melt(wt_est)
wt_est <- wt_est[(time.step.num + 1):length(wt_est[ ,1]),]
wt_est$time <- rep(c(init.step:(time.step.num - 1 + init.step)), comp.num)
wt_est$cond <- rep("wt", length(wt_est[ ,1]))
wt_est$run <- rep("est", length(wt_est[ ,1]))

# import the data table with estimated pten time courses
pten_est <- read.table(paste("pten_est.txt", sep=""), 
	header = TRUE, sep = "\t", stringsAsFactors = FALSE)
time.step.num <- length(pten_est[ ,1])
colnames(pten_est) <- c("time", "pi45p2", "pi3k_act", "pten", "pip3", "pi3k", "lig", 
	"rec", "pi45p2_pi3k_act", "pip3_pten", "rec_lig", "rec_dimer", "rec_phosp")
pten_est <- melt(pten_est)
pten_est <- pten_est[(time.step.num + 1):length(pten_est[ ,1]),]
pten_est$time <- rep(c(init.step:(time.step.num - 1 + init.step)), comp.num)
pten_est$cond <- rep("pten", length(pten_est[ ,1]))
pten_est$run <- rep("est", length(pten_est[ ,1]))

# import the data table with experimental wt time courses
wt_exp <- read.table("wt_lit.txt", header = TRUE, sep = "\t", 
	stringsAsFactors = FALSE)
time.steps <- wt_exp$time
wt_exp <- melt(wt_exp)
wt_exp <- wt_exp[7:(length(wt_exp[ ,1]) - 6),]
wt_exp$time <- rep(time.steps, 2)
wt_exp$cond <- rep("wt", length(wt_exp[ ,1]))
wt_exp$run <- rep("exp", length(wt_exp[ ,1]))

# import the data table with experimental pten time courses
pten_exp <- read.table("pten_lit.txt", header = TRUE, sep = "\t", 
	stringsAsFactors = FALSE)
time.steps <- pten_exp$time
pten_exp <- melt(pten_exp)
pten_exp <- pten_exp[7:(length(pten_exp[ ,1]) - 12),]
pten_exp$time <- rep(time.steps, 2)
pten_exp$cond <- rep("pten", length(pten_exp[ ,1]))
pten_exp$run <- rep("exp", length(pten_exp[ ,1]))

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
