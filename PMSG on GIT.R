#########################################################################################################################
### Project  : Pre-Mortem Stackelberg Game
### Script   : PMSG on GIT.R
### Contents : Measuring decentralized network efficiency: a pre-mortem Stackelberg game approach
#########################################################################################################################

#########################################################################################################################
### Setting up environment
#########################################################################################################################

# Load library
pkgs <- c("DJL")
sapply(pkgs, require, character.only = T)

# Load data & parameters
load("PMSG.Rdata")


#########################################################################################################################
### Analysis
#########################################################################################################################

# Toy 1
xdata.s1 <- df.toy.1[,1]
zdata    <- df.toy.1[,2]
ydata.s2 <- df.toy.1[,3]
xdata.s2 <- ydata.s1 <- NULL
rts      <- "vrs"; orientation <- "i"; type <- "nc"; leader <- "1st"; ss <- 10^-4; pm <- TRUE; o <- NULL

# Toy 2
xdata.s1 <- df.toy.2[,  1]
zdata    <- df.toy.2[,2:3]
ydata.s2 <- df.toy.2[,  4]
xdata.s2 <- ydata.s1 <- NULL
rts      <- "vrs"; orientation <- "i"; type <- "nc"; leader <- "1st"; ss <- 10^-4; pm <- TRUE; o <- NULL

# Toy 3
xdata.s1 <- df.toy.3[,1:3]
zdata    <- df.toy.3[,4:5]
ydata.s2 <- df.toy.3[,6:7]
xdata.s2 <- ydata.s1 <- NULL
rts      <- "vrs"; orientation <- "i"; type <- "nc"; leader <- "1st"; ss <- 10^-4; pm <- TRUE; o <- NULL

# Toy 4
xdata.s1 <- df.toy.4[,1:2]
zdata    <- df.toy.4[,3:7]
ydata.s2 <- df.toy.4[,8:9]
xdata.s2 <- ydata.s1 <- NULL
rts      <- "vrs"; orientation <- "i"; type <- "nc"; leader <- "1st"; ss <- 10^-4; pm <- TRUE; o <- NULL

# DB data
xdata.s1 <- df.db[,1:2]
zdata    <- df.db[,3:4]
ydata.s2 <- df.db[,5:6]
xdata.s2 <- ydata.s1 <- NULL
rts      <- "vrs"; orientation <- "i"; type <- "nc"; leader <- "1st"; ss <- 10^-4; pm <- TRUE; o <- NULL

dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st")$eff.s2
dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
dm.dea(xdata = df.db[,1:2], ydata = df.db[,3:4], rts = "vrs", orientation = "i")$yslack

# Run the original model
dm.network.dea.pmsg(xdata.s1 = df.toy.1[,  1], zdata = df.toy.1[,  2], ydata.s2 = df.toy.1[,  3], rts = "vrs", orientation = "i", leader = "1st")
dm.network.dea.pmsg(xdata.s1 = df.toy.1[,  1], zdata = df.toy.1[,  2], ydata.s2 = df.toy.1[,  3], rts = "vrs", orientation = "o", leader = "2nd")
dm.network.dea.pmsg(xdata.s1 = df.toy.2[,  1], zdata = df.toy.2[,2:3], ydata.s2 = df.toy.2[,  4], rts = "vrs", orientation = "i", leader = "1st")
dm.network.dea.pmsg(xdata.s1 = df.toy.2[,  1], zdata = df.toy.2[,2:3], ydata.s2 = df.toy.2[,  4], rts = "vrs", orientation = "o", leader = "2nd")
dm.network.dea.pmsg(xdata.s1 = df.toy.3[,1:3], zdata = df.toy.3[,4:5], ydata.s2 = df.toy.3[,6:7], rts = "vrs", orientation = "i", leader = "1st")
dm.network.dea.pmsg(xdata.s1 = df.toy.3[,1:3], zdata = df.toy.3[,4:5], ydata.s2 = df.toy.3[,6:7], rts = "vrs", orientation = "o", leader = "2nd")
dm.network.dea.pmsg(xdata.s1 = df.toy.4[,1:2], zdata = df.toy.4[,3:7], ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "i", leader = "1st")
dm.network.dea.pmsg(xdata.s1 = df.toy.4[,1:2], zdata = df.toy.4[,3:7], ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "o", leader = "2nd")

# Run alternative models
dm.network.dea.pmsg(xdata.s1 = df.toy.1[,  1], zdata = df.toy.1[,  2], ydata.s2 = df.toy.1[,  3], rts = "vrs", orientation = "i", leader = "1st", pm = T)
dm.network.dea.pmsg(xdata.s1 = df.toy.1[,  1], zdata = df.toy.1[,  2], ydata.s2 = df.toy.1[,  3], rts = "vrs", orientation = "o", leader = "2nd", pm = T)
dm.network.dea.pmsg(xdata.s1 = df.toy.2[,  1], zdata = df.toy.2[,2:3], ydata.s2 = df.toy.2[,  4], rts = "vrs", orientation = "i", leader = "1st", pm = T)
dm.network.dea.pmsg(xdata.s1 = df.toy.2[,  1], zdata = df.toy.2[,2:3], ydata.s2 = df.toy.2[,  4], rts = "vrs", orientation = "o", leader = "2nd", pm = T)
dm.network.dea.pmsg(xdata.s1 = df.toy.3[,1:3], zdata = df.toy.3[,4:5], ydata.s2 = df.toy.3[,6:7], rts = "vrs", orientation = "i", leader = "1st", pm = T)
dm.network.dea.pmsg(xdata.s1 = df.toy.3[,1:3], zdata = df.toy.3[,4:5], ydata.s2 = df.toy.3[,6:7], rts = "vrs", orientation = "o", leader = "2nd", pm = T)
dm.network.dea.pmsg(xdata.s1 = df.toy.4[,1:2], zdata = df.toy.4[,3:7], ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "i", leader = "1st", pm = T)
dm.network.dea.pmsg(xdata.s1 = df.toy.4[,1:2], zdata = df.toy.4[,3:7], ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "o", leader = "2nd", pm = T)

# Check zslacks
dm.dea(df.toy.1[,  1], df.toy.1[,  2], rts = "vrs", orientation = "i")$yslack
dm.dea(df.toy.1[,  2], df.toy.1[,  3], rts = "vrs", orientation = "o")$xslack
dm.dea(df.toy.2[,  1], df.toy.2[,2:3], rts = "vrs", orientation = "i")$yslack
dm.dea(df.toy.2[,2:3], df.toy.2[,  4], rts = "vrs", orientation = "i")$xslack
dm.dea(df.toy.3[,1:3], df.toy.3[,4:5], rts = "vrs", orientation = "i")$yslack
dm.dea(df.toy.3[,4:5], df.toy.3[,6:7], rts = "vrs", orientation = "i")$xslack
dm.dea(df.toy.4[,1:2], df.toy.4[,3:7], rts = "vrs", orientation = "i")$yslack
dm.dea(df.toy.4[,3:7], df.toy.4[,8:9], rts = "vrs", orientation = "i")$xslack

# Post-hoc analysis
# Case 1: min shifts applied
res.pmsg         <- dm.network.dea.pmsg(xdata.s1 = df.toy.4[,1:2], zdata = df.toy.4[,3:7], ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "i", leader = "1st", pm = T)
z.shift.min      <- res.pmsg$z.shift
z.df.std.min     <- df.toy.4[,3:7]
z.df.std.min[k,] <- df.toy.4[k, 3:7] + replace(z.shift.min[k,], sapply(z.shift.min[k,], is.nan), 0)
dm.network.dea.pmsg(xdata.s1 = df.toy.4[,1:2], zdata = z.df.std.min, ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "i", leader = "1st")

# Case 2: all slacks applied
z.shift.all      <- dm.dea(df.toy.4[,1:2], df.toy.4[,3:7], rts = "vrs", orientation = "i")$yslack[k,]
z.df.std.all     <- df.toy.4[,3:7]
z.df.std.all[k,] <- df.toy.4[k, 3:7] + z.shift.all
dm.network.dea.pmsg(xdata.s1 = df.toy.4[,1:2], zdata = z.df.std.all, ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "i", leader = "1st")

# Case 3: shifts manually applied
z.df.std.man     <- df.toy.4[,3:7]
z.df.std.man[k,] <- df.toy.4[k, 3:7] + c(0, 5, 0, 0, 0)
dm.network.dea.pmsg(xdata.s1 = df.toy.4[,1:2], zdata = z.df.std.man, ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "i", leader = "1st")

# Discussion table - debug
id.dmu      <- 31
res.yslack  <- dm.dea(xdata = df.db[,1:2], ydata = df.db[,3:4], rts = "vrs", orientation = "i")$yslack
df.db.z.1   <- df.db[,3:4]; df.db.z.1[id.dmu, 1] <- df.db.z.1[id.dmu, 1] + res.yslack[id.dmu, 1]
df.db.z.2   <- df.db[,3:4]; df.db.z.2[id.dmu, 2] <- df.db.z.2[id.dmu, 2] + res.yslack[id.dmu, 2]
df.db.z.1.2 <- df.db[,3:4]; df.db.z.1.2[id.dmu,] <- df.db.z.1.2[id.dmu,] + res.yslack[id.dmu,]

dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db.z.1, ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db.z.2, ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db.z.1.2, ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2









