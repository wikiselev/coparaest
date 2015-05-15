library(data.table)

co.var <- function(x) ( 100*sd(x)/mean(x) )

d <- read.table("../results/obj-values.txt", header = F, sep = "\t")

models <- head(d[,1], 10)
dat <- data.frame()

for(i in models) {
	t <- read.table(paste0("../results/param-estimations/", i, "/estd-params.txt"), header = T, sep = "\t")
	t$model <- i
	dat <- rbind(dat, t)
}

dat <- dat[, c(1, 2, 5)]
colnames(dat)[2] <- "value"

dat <- as.data.table(dat)

plot(dat[ , list(CoV = co.var(value)), by = c("Parameter")])

t <- dcast(dat, Parameter ~ model)
rownames(t) <- t[,1]
t <- t[,2:dim(t)[2]]

heatmap(cor(t(t)))

hist(dat[dat$Parameter == "(pip3_pi45p2_production).k1:", ]$Value)
hist(dat[dat$Parameter == "(pip3_degradation).k1:", ]$Value)

hist(dat[dat$Parameter == "(pi34p2_ship2_production).k1:", ]$Value)
hist(dat[dat$Parameter == "(pip3_ship2_binding).k1:", ]$Value)
hist(dat[dat$Parameter == "(pip3_ship2_binding).k2:", ]$Value)
hist(dat[dat$Parameter == "Values[pten_initial_concentration].InitialValue:", ]$Value)
hist(dat[dat$Parameter == "Values[ship2_initial_concentration].InitialValue:", ]$Value)
hist(dat[dat$Parameter == "(pip3_pten_binding).k1:", ]$Value)
hist(dat[dat$Parameter == "(pip3_pten_binding).k2:", ]$Value)
hist(dat[dat$Parameter == "(pi45p2_pip3_production).k1:", ]$Value)
