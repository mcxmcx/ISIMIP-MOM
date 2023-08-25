

SRP.projection=read.csv("SRP projection.csv",header=T)

# 1. for period 07-21

SRP.07=SRP.projection[SRP.projection$Type=="Period 07-21",]

tiff(filename="SRP projection (07-21).tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(SRP.07,aes(x=Day))
p+
  geom_line(aes(y=Min,color=With),size=1,alpha = 1) +
  geom_line(aes(y=Max,color=With),size=1,alpha = 1) +
  geom_line(aes(y=Mean,color=With),size=4)+
  theme_bw()+
  ylab(expression(paste("Phosphate (mg ",L^-1,")",sep="")))+
  scale_color_wsj()+
  scale_fill_wsj()+
  scale_y_continuous(limits = c(0, 0.006),
                     breaks=seq(0,0.006,0.001))+
  theme(plot.margin = unit(c(0.2,0.5, 0.01, 0.58), "inches"),
        panel.grid=element_blank(),
        panel.border=element_rect(size=2,colour="black"),
        legend.title=element_blank(),
        legend.text=element_text(size=50,
                                 margin = margin(t = 10, unit = "pt",
                                                 r=20)),
        legend.position = c(0.3,0.85),
        legend.direction = "vertical",
        legend.key.width=unit(4,"cm"),
        legend.key.height=unit(2,"cm"),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=50),
        axis.text.y=element_text(size=50),
        axis.title.x=element_text(size=50),
        axis.title.y=element_text(size=50))


dev.off()





# 2. for period 45-59

SRP.45=SRP.projection[SRP.projection$Type=="Period 45-59",]

tiff(filename="SRP projection (45-59).tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(SRP.45,aes(x=Day))
p+
  geom_line(aes(y=Min,color=With),size=1,alpha = 1) +
  geom_line(aes(y=Max,color=With),size=1,alpha = 1) +
  geom_line(aes(y=Mean,color=With),size=4)+
  theme_bw()+
  ylab(expression(paste("Phosphate (mg ",L^-1,")",sep="")))+
  scale_color_wsj()+
  scale_fill_wsj()+
  scale_y_continuous(limits = c(0, 0.006),
                     breaks=seq(0,0.006,0.001))+
  theme(plot.margin = unit(c(0.2,0.5, 0.01, 0.58), "inches"),
        panel.grid=element_blank(),
        panel.border=element_rect(size=2,colour="black"),
        legend.title=element_blank(),
        legend.text=element_text(size=50,
                                 margin = margin(t = 10, unit = "pt",
                                                 r=20)),
        legend.position = c(0.3,0.85),
        legend.direction = "vertical",
        legend.key.width=unit(4,"cm"),
        legend.key.height=unit(2,"cm"),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=50),
        axis.text.y=element_text(size=50),
        axis.title.x=element_text(size=50),
        axis.title.y=element_text(size=50))


dev.off()




# 3. for period 85-99

SRP.85=SRP.projection[SRP.projection$Type=="Period 85-99",]

tiff(filename="SRP projection (85-99).tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(SRP.85,aes(x=Day))
p+
  geom_line(aes(y=Min,color=With),size=1,alpha = 1) +
  geom_line(aes(y=Max,color=With),size=1,alpha = 1) +
  geom_line(aes(y=Mean,color=With),size=4)+
  theme_bw()+
  ylab(expression(paste("Phosphate (mg ",L^-1,")",sep="")))+
  scale_color_wsj()+
  scale_fill_wsj()+
  scale_y_continuous(limits = c(0, 0.012),breaks=seq(0,0.012,0.002))+
  theme(plot.margin = unit(c(0.2,0.5, 0.01, 0.58), "inches"),
        panel.grid=element_blank(),
        panel.border=element_rect(size=2,colour="black"),
        legend.title=element_blank(),
        legend.text=element_text(size=50,
                                 margin = margin(t = 10, unit = "pt",
                                                 r=20)),
        legend.position = c(0.3,0.85),
        legend.direction = "vertical",
        legend.key.width=unit(4,"cm"),
        legend.key.height=unit(2,"cm"),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=50),
        axis.text.y=element_text(size=50),
        axis.title.x=element_text(size=50),
        axis.title.y=element_text(size=50))


dev.off()
