library(gplots)
library(ggplot2)

d <- read.table("results/obj-values.txt", header = F, sep = "\t")
models <- head(d[,1], 10)
dat <- read.table(paste0("results/", models[1], "/estd-params.txt"), header = T, sep = "\t")
for(i in models) {
  t <- read.table(paste0("results/", i, "/estd-params.txt"), header = T, sep = "\t")
  dat <- cbind(dat, t[,2])
}
rownames(dat) <- dat[,1]
dat <- dat[, c(5:dim(dat)[2])]
colnames(dat) <- models

pdf("results/model-correlations.pdf", w = 10, h = 10)
heatmap.2(cor(dat), Colv = F, col = bluered(100), margins = c(5, 5))
dev.off()

pdf("results/param-correlations.pdf", w = 10, h = 10)
heatmap.2(cor(t(dat)), Colv = F, col = bluered(100), margins = c(15, 15))
dev.off()

t <- as.data.frame(apply(dat, 1, function(x) ( 100*sd(x)/mean(x) )))
t[ , 2] <- rownames(t)
colnames(t) <- c("Variance", "Parameter")
p <- ggplot(t, aes(Parameter, Variance)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
ggsave("results/param-variance.pdf", w = 10, h = 6)

