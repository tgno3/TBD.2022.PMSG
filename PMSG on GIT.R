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

# Proof of Concept
{
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
  
  # Toy 5
  xdata.s1 <- df.toy.5[,1]
  zdata    <- df.toy.5[,2:3]
  ydata.s2 <- df.toy.5[,4]
  xdata.s2 <- ydata.s1 <- NULL
  rts      <- "vrs"; orientation <- "i"; type <- "nc"; leader <- "1st"; ss <- 10^-4; pm <- TRUE; o <- NULL
  
  # DB data
  xdata.s1 <- df.db[,1:2]
  zdata    <- df.db[,3:4]
  ydata.s2 <- df.db[,5:6]
  xdata.s2 <- ydata.s1 <- NULL
  rts      <- "vrs"; orientation <- "i"; type <- "nc"; leader <- "1st"; ss <- 10^-4; pm <- TRUE; o <- NULL
  rts      <- "vrs"; orientation <- "o"; type <- "nc"; leader <- "2nd"; ss <- 10^-4; pm <- TRUE; o <- NULL
  
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

  # Visualize - Z - Y
  plot3d(df.toy.5[,2], df.toy.5[,3], df.toy.5[,4], col = "red", box = F, type = "s", radius = 0.3, axes = T, 
         xlim = c(0, 15), ylim = c(0, 15), zlim = c(0, 40),
         xlab = "z1", ylab = "z2", zlab = "y1")
  text3d(df.toy.5[,2], df.toy.5[,3], df.toy.5[,4] + 2, texts = 1:6, col="red")
  
  # Free disposability
  for(i in 1:4){
    rgl.lines(c(df.toy.5$z1[i], df.toy.5$z1[i]), c(df.toy.5$z2[i], df.toy.5$z2[i]), c(0, df.toy.5$y[i]), color="red") # y-
    rgl.lines(c(15, df.toy.5$z1[i]), c(df.toy.5$z2[i], df.toy.5$z2[i]), c(df.toy.5$y[i], df.toy.5$y[i]), color="red") # z1+
    rgl.lines(c(df.toy.5$z1[i], df.toy.5$z1[i]), c(15, df.toy.5$z2[i]), c(df.toy.5$y[i], df.toy.5$y[i]), color="red") # z2+
  }
  
  rgl.lines(c(df.toy.5$z1[4], df.toy.5$z1[4]), c(df.toy.5$z2[4], df.toy.5$z2[4]), c(0, df.toy.5$y[4]), color="red") # 4 - y-
  rgl.lines(c(df.toy.5$z1[1], df.toy.5$z1[1]), c(df.toy.5$z2[1], df.toy.5$z2[1]), c(0, df.toy.5$y[1]), color="red") # 1 - y-
  rgl.lines(c(df.toy.5$z1[2], df.toy.5$z1[2]), c(df.toy.5$z2[2], df.toy.5$z2[2]), c(0, df.toy.5$y[2]), color="red") # 2 - y-
  rgl.lines(c(df.toy.5$z1[3], df.toy.5$z1[3]), c(df.toy.5$z2[3], df.toy.5$z2[3]), c(0, df.toy.5$y[3]), color="red") # 3 - y-
  rgl.lines(c(15, df.toy.5$z1[4]), c(df.toy.5$z2[4], df.toy.5$z2[4]), c(df.toy.5$y[4], df.toy.5$y[4]), color="red") # 4 - z1+
  rgl.lines(c(15, df.toy.5$z1[1]), c(df.toy.5$z2[1], df.toy.5$z2[1]), c(df.toy.5$y[1], df.toy.5$y[1]), color="red") # 1 - z1+
  rgl.lines(c(15, df.toy.5$z1[2]), c(df.toy.5$z2[2], df.toy.5$z2[2]), c(df.toy.5$y[2], df.toy.5$y[2]), color="red") # 2 - z1+
  rgl.lines(c(15, df.toy.5$z1[3]), c(df.toy.5$z2[3], df.toy.5$z2[3]), c(df.toy.5$y[3], df.toy.5$y[3]), color="red") # 3 - z1+
  
  rgl.lines(c(df.toy.5$z1[4], df.toy.5$z1[4]), c(15, df.toy.5$z2[4]), c(df.toy.5$y[4], df.toy.5$y[4]), color="red") # 4 - z2+
  rgl.lines(c(df.toy.5$z1[1], df.toy.5$z1[1]), c(15, df.toy.5$z2[1]), c(df.toy.5$y[1], df.toy.5$y[1]), color="red") # 1 - z2+
  
  rgl.lines(c(X$x1[3], X$x1[3]), c(X$x2[3], 12), c(Y$y1[3], Y$y1[3]), color="red") # C - x2
  rgl.lines(c(X$x1[3], X$x1[3]), c(X$x2[3], 12), c(0,             0), color="red") # C - x2 - 0
  rgl.lines(c(X$x1[4], X$x1[4]), c(X$x2[4], 12), c(Y$y1[4], Y$y1[4]), color="red") # D - x2
  rgl.lines(c(X$x1[3], 12), c(X$x2[3], X$x2[3]), c(Y$y1[3], Y$y1[3]), color="red") # C - x1
  rgl.lines(c(X$x1[3], 12), c(X$x2[3], X$x2[3]), c(0,             0), color="red") # C - x1 - 0
  rgl.lines(c(X$x1[6], 12), c(X$x2[6], X$x2[6]), c(Y$y1[6], Y$y1[6]), color="red") # F - x1
  rgl.lines(c(X$x1[4], 12), c(X$x2[4], X$x2[4]), c(Y$y1[4], Y$y1[4]), color="red") # D - x1
  rgl.lines(c(X$x1[3], X$x1[3]), c(X$x2[3], X$x2[3]), c(Y$y1[3],  0), color="red") # C - x3
  
  # Convexity
  rgl.lines(c(X$x1[1], X$x1[3]), c(X$x2[1], X$x2[3]), c(Y$y1[1], Y$y1[3]), color="red") # A-C
  rgl.lines(c(X$x1[1], X$x1[4]), c(X$x2[1], X$x2[4]), c(Y$y1[1], Y$y1[4]), color="red") # A-D
  rgl.lines(c(X$x1[1], X$x1[5]), c(X$x2[1], X$x2[5]), c(Y$y1[1], Y$y1[5]), color="red") # A-E
  rgl.lines(c(X$x1[3], X$x1[5]), c(X$x2[3], X$x2[5]), c(Y$y1[3], Y$y1[5]), color="red") # C-E
  rgl.lines(c(X$x1[6], X$x1[5]), c(X$x2[6], X$x2[5]), c(Y$y1[6], Y$y1[5]), color="red") # E-F
  rgl.lines(c(X$x1[5], X$x1[4]), c(X$x2[5], X$x2[4]), c(Y$y1[5], Y$y1[4]), color="red") # E-D
  
  # Clear
  rgl.clear()
}


# Comparison
res.sl.w       <- dm.dea(xdata = df.db[,1:2], ydata = df.db[,3:4], rts = "vrs", orientation = "i")$yslack
res.w          <- dm.dea(xdata = df.db[,1:2], ydata = df.db[,3:4], rts = "vrs", orientation = "i")$u
res.eff.2.cv   <- dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st")$eff.s2
res.eff.2.pmsg <- dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
res.z.shift    <- dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$z.shift

data.frame(res.sl.w, res.eff.2.cv, res.eff.2.pmsg, res.z.shift)


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
id.dmu       <- 31
res.yslack.c <- dm.dea(xdata = df.db[,1:2], ydata = df.db[,3:4], rts = "vrs", orientation = "i")$yslack
res.u.c      <- dm.dea(xdata = df.db[,1:2], ydata = df.db[,3:4], rts = "vrs", orientation = "i")$u
res.eff.2.c  <- dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st")$eff.s2
data.frame(res.yslack.c, round(res.u.c, 8), res.eff.2.c)

# Add slack of the first z
df.db.z.1    <- df.db[,3:4]; df.db.z.1[id.dmu, 1] <- df.db.z.1[id.dmu, 1] + res.yslack[id.dmu, 1]

# Add slack of the second z
df.db.z.2    <- df.db[,3:4]; df.db.z.2[id.dmu, 2] <- df.db.z.2[id.dmu, 2] + res.yslack[id.dmu, 2]
res.yslack.s <- dm.dea(xdata = df.db[,1:2], ydata = df.db.z.2, rts = "vrs", orientation = "i")$yslack
res.u.s      <- dm.dea(xdata = df.db[,1:2], ydata = df.db.z.2, rts = "vrs", orientation = "i")$u
res.eff.2.s  <- dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db.z.2, ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st")$eff.s2
data.frame(res.yslack.s, round(res.u.s, 8), res.eff.2.s)

res.eff.2.s <- dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db.z.2, ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st")$eff.s2

df.db.z.1.2 <- df.db[,3:4]; df.db.z.1.2[id.dmu,] <- df.db.z.1.2[id.dmu,] + res.yslack[id.dmu,]





dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db.z.1, ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db.z.2, ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db.z.1.2, ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2

dm.network.dea(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st")$eff.s2
dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2

dm.network.dea(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "o", leader = "2nd")$eff.s1
dm.network.dea.pmsg(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "o", leader = "2nd", pm = T)$eff.s1

# remove DMU 34 & 48
df.db.46 <- df.db
# df.db.46 <- df.db[-c(34, 48),]


# Table 2. Comparative results of network efficiencies
res.LF.io.conv <- dm.network.dea.pmsg(xdata.s1 = df.db.46[,1:2], zdata = df.db.46[,3:4], ydata.s2 = df.db.46[,5:6], 
                                      rts = "vrs", orientation = "i", leader = "1st", pm = F)
res.LF.io.pmsg <- dm.network.dea.pmsg(xdata.s1 = df.db.46[,1:2], zdata = df.db.46[,3:4], ydata.s2 = df.db.46[,5:6], 
                                      rts = "vrs", orientation = "i", leader = "1st", pm = T)
res.FL.oo.conv <- dm.network.dea.pmsg(xdata.s1 = df.db.46[,1:2], zdata = df.db.46[,3:4], ydata.s2 = df.db.46[,5:6], 
                                      rts = "vrs", orientation = "o", leader = "2nd", pm = F)
res.FL.oo.pmsg <- dm.network.dea.pmsg(xdata.s1 = df.db.46[,1:2], zdata = df.db.46[,3:4], ydata.s2 = df.db.46[,5:6], 
                                      rts = "vrs", orientation = "o", leader = "2nd", pm = T)

table.2 <- data.frame(DMU           = 1:nrow(df.db.46),
                      Eff.L.io      = res.LF.io.conv$eff.s1,
                      Eff.F.io.conv = res.LF.io.conv$eff.s2,
                      Eff.F.io.pmsg = res.LF.io.pmsg$eff.s2,
                      Sft.F.io.pmsg = res.LF.io.pmsg$z.shift,
                      Eff.L.oo      = res.FL.oo.conv$eff.s2,
                      Eff.F.oo.conv = res.FL.oo.conv$eff.s1,
                      Eff.F.oo.pmsg = res.FL.oo.pmsg$eff.s1,
                      Sft.F.oo.pmsg = res.FL.oo.pmsg$z.shift)


#########################################################################################################################
### Analysis
#########################################################################################################################

#Table 2. Descriptive Statistics
table.2 <- data.frame(Min  = round(apply(dbdata,2, "min")),
                      Med  = round(apply(dbdata,2, "median")),
                      Mean = round(apply(dbdata,2, "mean")),
                      Max  = round(apply(dbdata,2, "max")),
                      Std  = round(apply(dbdata,2, "sd")))

#Table 3. Efficiency Comparison

res.netDEA <- dm.network.dea.pmsg(dbdata[1:2],NULL,dbdata[,3:4],NULL,dbdata[,5:6], rts='vrs', 
                                  orientation = 'i', type = 'nc')
res.slack  <- dm.dea(dbdata[1:2],dbdata[,3:4], rts='vrs', 
                     orientation = 'i')
res.pmsg   <- dm.network.dea.pmsg(dbdata[1:2],NULL,dbdata[,3:4],NULL,dbdata[,5:6], rts='vrs', 
                                  orientation = 'i', type = 'nc', pm = TRUE )
table.3    <- data.frame(row.names     = rownames(dbdata),
                         Eff.s1.NetDEA = res.netDEA$eff.s1,
                         Eff.s2.NetDEA = res.netDEA$eff.s2,
                         Slack         = res.slack$yslack,
                         Eff.s1.PMSG   = res.pmsg$eff.s1,
                         Eff.s2.PMSG   = res.pmsg$eff.s2,
                         ZShift        = res.pmsg$z.shift)

# Calculation of 3 slack scenarios
dbtest=dbdata
Eff.z1    <- c()
Eff.z2    <- c()
Z1        <- c()
Z2        <- c()
Eff.zboth <- c()
Z1slack   <- c()
Z2slack   <- c()
id.branch <- c()

for(i in 1:48){
  
  res.slack  <- dm.dea(dbtest[1:2],dbtest[,3:4], rts='vrs', 
                       orientation = 'i')
  
  #Case-Z1
  if(res.slack$yslack[i,1]>0 && res.slack$yslack[i,2]>0){
    dbtest[i,3] <- dbtest[i,3]+res.slack$yslack[i,1]
    res.zslack  <- dm.network.dea.pmsg(dbtest[,1:2],NULL,dbtest[,3:4],NULL,dbtest[,5:6], rts='vrs', 
                                       orientation = 'i', type = 'nc')
    Eff.z1      <- c(Eff.z1,res.zslack$eff.s2[i,])
    dbtest[i,3] <- dbdata[i,3]
    Z1          <- c(Z1,res.slack$yslack[i,1])
  }
  
  #Case-Z2
  if(res.slack$yslack[i,1]>0 && res.slack$yslack[i,2]>0){
    dbtest[i,4] <- dbtest[i,4]+res.slack$yslack[i,2]
    res.zslack  <- dm.network.dea.pmsg(dbtest[,1:2],NULL,dbtest[,3:4],NULL,dbtest[,5:6], rts='vrs', 
                                       orientation = 'i', type = 'nc' )
    Eff.z2      <- c(Eff.z2,res.zslack$eff.s2[i,])
    dbtest[i,4] <- dbdata[i,4]
    Z2          <- c(Z2,res.slack$yslack[i,2])
  }
  
  #Case-both
  if(res.slack$yslack[i,1]>0 && res.slack$yslack[i,2]>0 ){
    dbtest[i,3] <- dbtest[i,3]+res.slack$yslack[i,1]
    dbtest[i,4] <- dbtest[i,4]+res.slack$yslack[i,2]
    res.zslack  <- dm.network.dea.pmsg(dbtest[,1:2],NULL,dbtest[,3:4],NULL,dbtest[,5:6], rts='vrs', 
                                       orientation = 'i', type = 'nc' )
    Eff.zboth      <- c(Eff.zboth,res.zslack$eff.s2[i,])
    dbtest[i,3] <- dbdata[i,3]
    dbtest[i,4] <- dbdata[i,4]
    Z1slack          <- c(Z1slack,res.slack$yslack[i,1])
    Z2slack          <- c(Z2slack,res.slack$yslack[i,2])
    id.branch   <- c(id.branch,i)
  }
}

# Table 4. Slack comparison
table.4 <- data.frame(row.names = c(id.branch),
                      Eff.case1 = Eff.z1,
                      Z.case1   = Z1,
                      Eff.case2 = Eff.z2,
                      Z.case2   = Z2,
                      Eff.case3 = Eff.zboth,
                      Shift.Z1  = Z1slack,
                      Shift.Z2  = Z2slack)






