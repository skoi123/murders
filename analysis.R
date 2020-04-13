library(tidyverse)
load("rda/murders.rda")


murders %>% mutate( abb=reorder(abb,rate))%>% ggplot(aes(abb,rate))+geom_bar(stat="identity",width=.5,color="blue")+coord_flip()

x<- 5
ggsave("figs/barplot.png")