temp1m.compare=read.csv("temp1m.compare.csv",header=T)

tiff(filename="1m temp compare surf and with.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(temp1m.compare,aes(x=Year))
p+
  geom_line(aes(y=Min,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Max,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Mean,color=Type),size=3.5)+
  ylim(9,17)+
  theme_bw()+
  ylab("Temperature (°C)")+
  scale_color_wsj()+
  scale_fill_wsj()+
  theme(plot.margin = unit(c(0.5,0.5, 2.5, 1.03), "inches"),
        panel.grid=element_blank(),
        panel.border=element_rect(size=2,colour="black"),
        #legend.key.size = unit(3, 'lines'),
        legend.title=element_blank(),
        legend.text=element_text(size=45,
                                 margin = margin(t = 10, unit = "pt",
                                                 r=20)),
        legend.direction = "vertical",
        legend.position = c(0.3,0.83),
        legend.key.width=unit(4,"cm"),
        legend.key.height=unit(1,"cm"),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=50),
        axis.text.y=element_text(size=50),
        axis.title.x=element_text(size=50),
        axis.title.y=element_text(size=50,vjust=5.8))



dev.off()


temp10m.compare=read.csv("temp10m.compare.csv",header=T)

tiff(filename="10m temp compare surf and with.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(temp10m.compare,aes(x=Year))
p+
  geom_line(aes(y=Min,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Max,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Mean,color=Type),size=3.5)+
  #ylim(4,12)+
  theme_bw()+
  ylab("Temperature (°C)")+
  scale_color_wsj()+
  scale_fill_wsj()+
  theme(plot.margin = unit(c(0.5,0.5, 2.5, 1.03), "inches"),
        panel.grid=element_blank(),
        panel.border=element_rect(size=2,colour="black"),
        #legend.key.size = unit(3, 'lines'),
        legend.title=element_blank(),
        legend.text=element_text(size=45,
                                 margin = margin(t = 10, unit = "pt",
                                                 r=20)),
        legend.direction = "vertical",
        legend.position = c(0.3,0.83),
        legend.key.width=unit(4,"cm"),
        legend.key.height=unit(1,"cm"),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=50),
        axis.text.y=element_text(size=50),
        axis.title.x=element_text(size=50),
        axis.title.y=element_text(size=50,vjust=5.8))



dev.off()



temp60m.compare=read.csv("temp60m.compare.csv",header=T)

tiff(filename="60m temp compare surf and with.tiff",width=50,height=25,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(temp60m.compare,aes(x=Year))
p+
  geom_line(aes(y=Min,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Max,color=Type),size=1,alpha = 0.5) +
  geom_line(aes(y=Mean,color=Type),size=3.5)+
  ylim(4,10)+
  theme_bw()+
  ylab("Temperature (°C)")+
  scale_color_wsj()+
  scale_fill_wsj()+
  theme(plot.margin = unit(c(0.5,0.5, 2.5, 1.03), "inches"),
        panel.grid=element_blank(),
        panel.border=element_rect(size=2,colour="black"),
        #legend.key.size = unit(3, 'lines'),
        legend.title=element_blank(),
        legend.text=element_text(size=45,
                                 margin = margin(t = 10, unit = "pt",
                                                 r=20)),
        legend.direction = "vertical",
        legend.position = c(0.3,0.83),
        legend.key.width=unit(4,"cm"),
        legend.key.height=unit(1,"cm"),
        axis.ticks.length = unit(0.4,"cm"),
        axis.ticks=element_line(size=2.5),
        axis.text.x=element_text(size=50),
        axis.text.y=element_text(size=50),
        axis.title.x=element_text(size=50),
        axis.title.y=element_text(size=50,vjust=5.8))


dev.off()
