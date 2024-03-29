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

# Toy
xdata.s1 <- df.toy.1[,1]
zdata    <- df.toy.1[,2]
ydata.s2 <- df.toy.1[,3]
xdata.s2 <- ydata.s1 <- NULL
rts      <- "vrs"; orientation <- "i"; type <- "nc"; leader <- "1st"; ss <- 10^-4; pm <- TRUE; o <- NULL

# Run the original model
dm.network.dea.pmsg(xdata.s1 = df.toy.1[,1], zdata = df.toy.1[,2], ydata.s2 = df.toy.1[,3], rts = "vrs", orientation = "i", leader = "1st")
dm.network.dea.pmsg(xdata.s1 = df.toy.1[,1], zdata = df.toy.1[,2], ydata.s2 = df.toy.1[,3], rts = "vrs", orientation = "o", leader = "2nd")

# Run alternative models
dm.network.dea.pmsg(xdata.s1 = df.toy.1[,1], zdata = df.toy.1[,2], ydata.s2 = df.toy.1[,3], rts = "vrs", orientation = "i", leader = "1st", pm = T)
dm.network.dea.pmsg(xdata.s1 = df.toy.1[,1], zdata = df.toy.1[,2], ydata.s2 = df.toy.1[,3], rts = "vrs", orientation = "o", leader = "2nd", pm = T)
