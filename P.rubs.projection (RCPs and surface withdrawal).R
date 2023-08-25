# 1. P.rubs under 3 RCPs (bottom withdrawal)

file=c("P.rubs.projection (RCP26).csv",
       "P.rubs.projection (RCP60).csv",
       "P.rubs.projection (RCP85).csv")

rcp=c("RCP26","RCP60","RCP85")

for (i in seq(1,3)){
  
  all.period=read.csv(file[i],header=T)
  
  p=ggplot(all.period,aes(x=Day))+
    geom_line(aes(y=Mean,color=Period),size=2)+
    geom_ribbon(aes(ymin =Min, ymax = Max,fill=Period), alpha = 0.8)+
    theme_bw()+
    ylab(expression(paste("P.rubs (µg ",L^-1,")",sep="")))+
    ylim(0,8)+
    scale_color_wsj()+
    scale_fill_wsj()+
    theme(panel.grid=element_blank(),
          panel.border=element_rect(size=2,colour="black"),
          legend.title=element_blank(),
          legend.text=element_text(size=40,
                                   margin = margin(t = 10, unit = "pt",
                                                   r=20)),
          legend.position = c(0.7,0.8),
          legend.key.width=unit(4,"cm"),
          legend.key.height=unit(1,"cm"),
          axis.ticks.length = unit(0.4,"cm"),
          axis.ticks=element_line(size=2.5),
          axis.text=element_text(size=50),
          axis.title=element_text(size=50))
  
  ggsave(paste("P.rubs under ",rcp[i],".tiff",sep=""),
         plot=p,dpi=300,
         width=40,height=20,units="cm")      
  
}




# 2. P.rubs under RCP 85 (surface withdrawal)

p.rubs.surf.with=read.csv("P.rubs.projection (RCP85,surf with).csv",
                          header=T)


tiff(filename="P.rubs under (surface withdrawal).tiff",
     width=40,height=20,units="cm",compression="lzw",res=300,bg="white")

p=ggplot(p.rubs.surf.with,aes(x=Day))
p+
  geom_line(aes(y=Mean,color=Type),size=2)+
  geom_ribbon(aes(ymin =Min, ymax = Max,fill=Type), alpha = 0.8)+
  theme_bw()+
  ylab(expression(paste("P.rubs (µg ",L^-1,")",sep="")))+
  ylim(0,8)+
  scale_color_wsj()+
  scale_fill_wsj()+
  theme(#plot.margin = unit(c(0.2,0.5, 0.01, 0.58), "inches"),
    panel.grid=element_blank(),
    panel.border=element_rect(size=2,colour="black"),
    legend.title=element_blank(),
    legend.text=element_text(size=40,
                             margin = margin(t = 10, unit = "pt",
                                             r=20)),
    legend.position = c(0.7,0.8),
    legend.direction = "vertical",
    legend.key.width=unit(4,"cm"),
    legend.key.height=unit(1,"cm"),
    axis.ticks.length = unit(0.4,"cm"),
    axis.ticks=element_line(size=2.5),
    axis.text=element_text(size=50),
    #axis.title.x=element_text(size=50),
    axis.title=element_text(size=50))



dev.off()
