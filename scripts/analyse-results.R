d <- read.table("../results/obj-values.txt", header = F, sep = "\t")

models <- head(d[,1], 10)
dat <- read.table(paste0("../results/param-estimations/", models[1], "/estd-params.txt"), header = T, sep = "\t")

for(i in models) {
  t <- read.table(paste0("../results/param-estimations/", i, "/estd-params.txt"), header = T, sep = "\t")
  dat <- cbind(dat, t[,2])
}

rownames(dat) <- dat[,1]
dat <- dat[, c(5:dim(dat)[2])]
colnames(dat) <- models

heatmap(cor(t(dat)))

co.var <- function(x) ( 100*sd(x)/mean(x) )

dat <- data.frame()

for(i in models) {
  t <- read.table(paste0("../results/param-estimations/", i, "/estd-params.txt"), header = T, sep = "\t")
  t$model <- i
  dat <- rbind(dat, t)
}

dat <- dat[, c(1, 2, 5)]
plot(dat[ , list(CoV = co.var(Value)), by = c("Parameter")])
