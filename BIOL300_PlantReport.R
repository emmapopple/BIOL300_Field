#setup
PlantData <- read.csv("BIOL300_PlantSurveyData_F26.csv")
library(dplyr)

#re-order time variables so they are sequential, not alphabetical
PlantData$time <- factor(
  PlantData$time,
  levels = c("early am", "late am", "early pm", "late pm"))

#Make a Q set
Q_goldenrod <- PlantData %>%
  filter(method == "Q") %>% #keep only rows where method is "Q"
  select(time, rep, goldenrod) %>% #keep only time, rep, and goldenrod (out of columns)
  mutate(method = "Quadrat") #Adding a column called quadrat that gives every row "Quadrat"

#Make a PIT set
PIT_goldenrod <- PlantData %>%
  filter(method == "PIT") %>% #keep only rows where method is "Q"
  group_by(time, rep) %>% #make each comp=bination of time + rep a group
  summarise(goldenrod = mean(goldenrod) * 100) %>% #for each time + replicate group, calculat the mean goldenrod value
  mutate(method = "PIT") #Adding a column called quadrat that gives every row "PIT"

#Bind the sets to generate the data needed for the graph
PlantData_goldenrod <- rbind(Q_goldenrod, PIT_goldenrod)

#graph
MethodsPlot <- ggplot(PlantData_goldenrod, aes(fill=method, x=time, y=goldenrod)) + 
  geom_bar(position="dodge", stat="identity") + 
  labs(
    x="Time of Sample",
    y="Canopy Cover (%)",
    fill="Sampling Method") + 
  scale_fill_manual(
    values = c("PIT" = "dodgerblue", "Quadrat" = "orangered")) +
  theme_classic()

pdf("MethodsPlot.pdf")
MethodsPlot
dev.off()
