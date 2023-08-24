# 1. for MOM DO concentration

# 1.1 RCP26
  
MOM.DO.RCP26=read.csv("MOM DO (RCP26).csv",header=T)

tiff(filename="MOM.DO.RCP26.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(MOM.DO.RCP26,aes(x=Year,y=Mean))
p+geom_ribbon(aes(ymin =Min, 
                  ymax = Max), alpha = 0.8,fill="steelblue") + 
  geom_line(color="red",size=1.5)+  
  # scale_custom+                             
  xlab("Year")+
  ylab(expression(paste("MOM oxygen (mg ",L^-1,")",sep="")))+
  ylim(0,7)+
  theme_bw()+  
  theme(plot.margin = unit(c(0.2,0.5, 0.5, 0.92), "inches"),
        panel.border=element_rect(size=2,colour="black"),
        panel.grid=element_blank(),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=54),
        axis.title.x=element_text(size=54),
        axis.text.y=element_text(size=54),
        axis.title.y=element_text(size=54,vjust=3.65))


dev.off()

# 1.2 RCP60

MOM.DO.RCP60=read.csv("MOM DO (RCP60).csv",header=T)

tiff(filename="MOM.DO.RCP60.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(range.60,aes(x=Year,y=Mean))
p+geom_ribbon(aes(ymin =Min, 
                  ymax = Max), alpha = 0.8,fill="steelblue") + 
  geom_line(color="red",size=1.5)+  
  # scale_custom+                             
  xlab("Year")+
  ylab(expression(paste("MOM oxygen (mg ",L^-1,")",sep="")))+
  ylim(0,7)+
  theme_bw()+
  theme(plot.margin = unit(c(0.2,0.5, 0.5, 0.92), "inches"),
        panel.border=element_rect(size=2,colour="black"),
        panel.grid=element_blank(),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=54),
        axis.title.x=element_text(size=54),
        axis.text.y=element_text(size=54),
        axis.title.y=element_text(size=54,vjust=3.65))


dev.off()


# 1.3 RCP85

MOM.DO.RCP85=read.csv("MOM DO (RCP85).csv",header=T)

tiff(filename="MOM.DO.RCP85.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(range.85,aes(x=Year,y=Mean))
p+geom_ribbon(aes(ymin =Min, 
                  ymax = Max), alpha = 0.8,fill="steelblue") + 
  geom_line(color="red",size=1.5)+  
  # scale_custom+                             
  xlab("Year")+
  ylab(expression(paste("MOM oxygen (mg ",L^-1,")",sep="")))+
  ylim(0,7)+
  theme_bw()+
  theme(plot.margin = unit(c(0.2,0.5, 0.5, 0.92), "inches"),
        panel.border=element_rect(size=2,colour="black"),
        panel.grid=element_blank(),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=54),
        axis.title.x=element_text(size=54),
        axis.text.y=element_text(size=54),
        axis.title.y=element_text(size=54,vjust=3.65))

dev.off()



# 2. for Hypolimnetic DO concentration

# 2.1 RCP26

Hypo.DO.RCP26=read.csv("Hypolimnetic DO (RCP26).csv",header=T)

tiff(filename="Hypo.DO.RCP26.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(Hypo.DO.RCP26,aes(x=Year,y=Mean))
p+geom_ribbon(aes(ymin =Min, 
                  ymax = Max), alpha = 0.8,fill="steelblue") + 
  geom_line(color="red",size=1.5)+  
  # scale_custom+                             
  xlab("Year")+
  ylab(expression(paste("Hypo oxygen (mg ",L^-1,")",sep="")))+
  ylim(5,11)+
  theme_bw()+
  theme(plot.margin = unit(c(0.2,0.5, 0.5, 0.5), "inches"),
        panel.border=element_rect(size=2,colour="black"),
        panel.grid=element_blank(),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=54),
        axis.title.x=element_text(size=54),
        axis.text.y=element_text(size=54),
        axis.title.y=element_text(size=54))

dev.off()

# 2.2 RCP60

Hypo.DO.RCP60=read.csv("Hypolimnetic DO (RCP60).csv",header=T)

tiff(filename="Hypo.DO.RCP60.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(Hypo.DO.RCP60,aes(x=Year,y=Mean))
p+geom_ribbon(aes(ymin =Min, 
                  ymax = Max), alpha = 0.8,fill="steelblue") + 
  geom_line(color="red",size=1.5)+  
  # scale_custom+                             
  xlab("Year")+
  ylab(expression(paste("Hypo oxygen (mg ",L^-1,")",sep="")))+
  ylim(5,11)+
  theme_bw()+
  theme(plot.margin = unit(c(0.2,0.5, 0.5, 0.5), "inches"),
        panel.border=element_rect(size=2,colour="black"),
        panel.grid=element_blank(),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=54),
        axis.title.x=element_text(size=54),
        axis.text.y=element_text(size=54),
        axis.title.y=element_text(size=54))

dev.off()

# 2.3 RC 85 

Hypo.DO.RCP85=read.csv("Hypolimnetic DO (RCP85).csv",header=T)

tiff(filename="Hypo.DO.RCP85.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(Hypo.DO.RCP85,aes(x=Year,y=Mean))
p+geom_ribbon(aes(ymin =Min, 
                  ymax = Max), alpha = 0.8,fill="steelblue") + 
  geom_line(color="red",size=1.5)+  
  xlab("Year")+
  ylab(expression(paste("Hypo oxygen (mg ",L^-1,")",sep="")))+
  ylim(5,11)+
  theme_bw()+
  theme(plot.margin = unit(c(0.2,0.5, 0.5, 0.5), "inches"),
        panel.border=element_rect(size=2,colour="black"),
        panel.grid=element_blank(),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=54),
        axis.title.x=element_text(size=54),
        axis.text.y=element_text(size=54),
        axis.title.y=element_text(size=54))

dev.off()


