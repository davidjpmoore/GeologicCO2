

PhytoPCO2=read.csv(file = "./data/Phytoplankton_Royer2006.csv", header = 1)
PalSolPCO2=read.csv(file = "./data/Royer2006_PaleoSolsd13c.csv", header = 1)
StomPCO2=read.csv(file = "./data/StomatalIndices_Royer2006.csv", header = 1)
BoronCO2=read.csv(file = "./data/MarineBoron_Royer2006.csv", header = 1)
LiverCO2=read.csv(file = "./data/Liverworts_Royer2006.csv", header = 1)
GEOCARBIII=read.csv(file = "./data/GEOCARB_RCO2.csv", header = 1)


Hon_pH=read.csv(file = "./data/HonischCenozoic.csv", header = 1)


png("CO2Record.png",width=6,height=4,units="in",res=300)
plot(GEOCARBIII$Age,GEOCARBIII$CO2,type="l", lwd=3, col="black", 
     xlab="Time Millions Yr BP", ylab="CO2 concentration (ppm)", xlim=c(-420, 0), ylim=c(0,8000))
points(-PalSolPCO2$Age,PalSolPCO2$CO2,col="red")
points(-PhytoPCO2$Age, PhytoPCO2$CO2,col="green")
points(-StomPCO2$Age, StomPCO2$CO2, col="blue")
points(-BoronCO2$Age, BoronCO2$CO2, col="black")
points(-LiverCO2$Age, LiverCO2$CO2, col="cyan")
dev.off()


png("Ph.png",width=6,height=4,units="in",res=300)
plot(-Hon_pH$age,Hon_pH$pH, col="red", xlab="Time Millions Yr BP", ylab="Ocean pH",  xlim=c(-420, 0), ylim=c(7.5, 8.29))
dev.off()