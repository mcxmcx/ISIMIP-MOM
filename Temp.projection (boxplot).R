temp.1m=read.csv("1m temp.csv",header=T)

tiff("temp.projection.1m.tiff",res=300,width=40,height=20,units="cm") 

p=ggplot(temp.1m,aes(Period,Temp))
p+geom_boxplot(aes(fill=Rcp),outlier.shape = NA)+
  xlab("")+
  ylab("Temperature (°C)")+
  theme_bw()+
  scale_fill_wsj()+
  theme(plot.margin=unit(c(1,0.5,1,0.92), "cm"), 
        panel.grid=element_blank(),
        panel.border=element_rect(size=2),
        legend.title=element_blank(),
        legend.direction = "vertical",
        legend.position=c(0.21,0.75),
        legend.text=element_text(size=45),
        legend.key.width=unit(3,"cm"),
        legend.key.height=unit(2,"cm"),
        axis.ticks.length = unit(0.6,"cm"),
        axis.ticks=element_line(size=2),
        axis.text.x=element_text(size=45),
        axis.text.y=element_text(size=45,margin=margin(20,20,20,20)),
        axis.title.x=element_text(size=45),
        axis.title.y=element_text(size=45,margin=margin(20,20,20,20)))

dev.off()    

temp.10m=read.csv("10m temp.csv",header=T)

tiff("temp.projection.10m.tiff",res=300,width=40,height=20,units="cm") 

p=ggplot(temp.10m,aes(Period,Temp))
p+geom_boxplot(aes(fill=Rcp),outlier.shape = NA)+
  xlab("")+
  ylab("Temperature (°C)")+
  theme_bw()+
  scale_fill_wsj()+
  theme(plot.margin=unit(c(1,0.5,1,0.92), "cm"), 
        panel.grid=element_blank(),
        panel.border=element_rect(size=2),
        legend.title=element_blank(),
        legend.direction = "vertical",
        legend.position=c(0.21,0.75),
        legend.text=element_text(size=45),
        legend.key.width=unit(3,"cm"),
        legend.key.height=unit(2,"cm"),
        axis.ticks.length = unit(0.6,"cm"),
        axis.ticks=element_line(size=2),
        axis.text.x=element_text(size=45),
        axis.text.y=element_text(size=45,margin=margin(20,20,20,20)),
        axis.title.x=element_text(size=45),
        axis.title.y=element_text(size=45,margin=margin(20,20,20,20)))

dev.off()   

temp.60m=read.csv("60m temp.csv",header=T)

tiff("temp.projection.60m.tiff",res=300,width=40,height=20,units="cm") 

p=ggplot(temp.60m,aes(Period,Temp))
p+geom_boxplot(aes(fill=Rcp),outlier.shape = NA)+
  # ylim(5,10)+
  xlab("")+
  ylab("Temperature (°C)")+
  theme_bw()+
  #theme_economist()+
  scale_fill_wsj()+
  theme(plot.margin=unit(c(1,0.5,1,2), "cm"), 
        panel.grid=element_blank(),
        panel.border=element_rect(size=2),
        legend.title=element_blank(),
        legend.direction = "vertical",
        legend.position=c(0.21,0.75),
        legend.text=element_text(size=45),
        legend.key.width=unit(3,"cm"),
        legend.key.height=unit(2,"cm"),
        axis.ticks.length = unit(0.6,"cm"),
        axis.ticks=element_line(size=2),
        axis.text.x=element_text(size=45),
        axis.text.y=element_text(size=45,margin=margin(20,20,20,20)),
        axis.title.x=element_text(size=42),
        axis.title.y=element_text(size=45,margin=margin(20,20,20,20),vjust=3.65))


dev.off()   