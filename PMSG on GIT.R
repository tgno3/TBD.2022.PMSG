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

  # Validation w DB
  dm.network.dea.pmsg.2(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = F)$eff.s2
  dm.network.dea.pmsg.2(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
  dm.network.dea.pmsg.2(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "o", leader = "1st", pm = F)$eff.s2
  dm.network.dea.pmsg.2(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "o", leader = "1st", pm = T)$eff.s2
  dm.network.dea.pmsg.2(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "2nd", pm = F)$eff.s1
  dm.network.dea.pmsg.2(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "i", leader = "2nd", pm = T)$eff.s1
  dm.network.dea.pmsg.2(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "o", leader = "2nd", pm = F)$eff.s1
  dm.network.dea.pmsg.2(xdata.s1 = df.db[,1:2], zdata = df.db[,3:4], ydata.s2 = df.db[,5:6], rts = "vrs", orientation = "o", leader = "2nd", pm = T)$eff.s1
  
  # Validation w toy.1
  dm.network.dea.pmsg.2(xdata.s1 = df.toy.1[,1], zdata = df.toy.1[,2], ydata.s2 = df.toy.1[,3], rts = "vrs", orientation = "i", leader = "1st", pm = F)$eff.s2
  dm.network.dea.pmsg.2(xdata.s1 = df.toy.1[,1], zdata = df.toy.1[,2], ydata.s2 = df.toy.1[,3], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
  
  # Validation w toy.2
  dm.network.dea.pmsg.2(xdata.s1 = df.toy.2[,1], zdata = df.toy.2[,2:3], ydata.s2 = df.toy.2[,4], rts = "vrs", orientation = "i", leader = "1st", pm = F)$eff.s2
  dm.network.dea.pmsg.2(xdata.s1 = df.toy.2[,1], zdata = df.toy.2[,2:3], ydata.s2 = df.toy.2[,4], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
  
  # Validation w toy.3
  dm.network.dea.pmsg.2(xdata.s1 = df.toy.3[,1:3], zdata = df.toy.3[,4:5], ydata.s2 = df.toy.3[,6:7], rts = "vrs", orientation = "i", leader = "1st", pm = F)$eff.s2
  dm.network.dea.pmsg.2(xdata.s1 = df.toy.3[,1:3], zdata = df.toy.3[,4:5], ydata.s2 = df.toy.3[,6:7], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
  
  # Validation w toy.4
  dm.network.dea.pmsg.2(xdata.s1 = df.toy.4[,1:2], zdata = df.toy.4[,3:7], ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "i", leader = "1st", pm = F)$eff.s2
  dm.network.dea.pmsg.2(xdata.s1 = df.toy.4[,1:2], zdata = df.toy.4[,3:7], ydata.s2 = df.toy.4[,8:9], rts = "vrs", orientation = "i", leader = "1st", pm = T)$eff.s2
}



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
