
# 1. MOM comparison under surface and bottom withdrawal


MOM.DO=read.csv("MOM DO (surface and bottom withdrawal).csv",header=T)

tiff(filename="MOM comparison under surface and original withdrawal.tiff",
     width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(MOM.DO,aes(x=Year))
p+
  geom_line(aes(y=Min,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Max,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Mean,color=Type),size=3.5)+
  ylim(0,7)+
  theme_bw()+
  ylab(expression(paste("MOM oxygen (mg ",L^-1,")",sep="")))+
  scale_color_wsj()+
  scale_fill_wsj()+
  theme(plot.margin = unit(c(0.8,0.5, 1, 1), "inches"),
        panel.border=element_rect(size=2,colour="black"),
        panel.grid=element_blank(),
        legend.title=element_blank(),
        legend.text=element_text(size=45,
                                 margin = margin(t = 10, unit = "pt",
                                                 r=20)),
        legend.direction = "horizontal",
        legend.position = c(0.5,0.9),
        legend.key.width=unit(4,"cm"),
        legend.key.height=unit(1,"cm"),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text=element_text(size=50),
        axis.title=element_text(size=50))



dev.off()

# 2. Hypolimnetic DO comparison under surface and bottom withdrawal

Hypo.DO=read.csv("Hypo DO (surface and bottom withdrawal).csv",header=T)


tiff(filename="Hypo DO comparison under surface and original withdrawal.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(Hypo.DO,aes(x=Year))
p+
  geom_line(aes(y=Min,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Max,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Mean,color=Type),size=3.5)+
  ylim(3,13)+
  theme_bw()+
  ylab(expression(paste("Hypo oxygen (mg ",L^-1,")",sep="")))+
  scale_color_wsj()+
  scale_fill_wsj()+
  theme(plot.margin = unit(c(0.8,0.5, 1, 1), "inches"),
        panel.border=element_rect(size=2,colour="black"),
        panel.grid=element_blank(),
        legend.title=element_blank(),
        legend.text=element_text(size=45,
                                 margin = margin(t = 10, unit = "pt",
                                                 r=20)),
        legend.direction = "horizontal",
        legend.position = c(0.5,0.9),
        legend.key.width=unit(4,"cm"),
        legend.key.height=unit(1,"cm"),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text=element_text(size=50),
        axis.title=element_text(size=50))



dev.off()
