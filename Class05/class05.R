#Class 5 Data Visualization
#Base R graphics
#This was more helpful than datacamp
plot(1:5)

#That was base R plot - quick and not very nice!
#We will use an add on package called ggplot2
#function has parentheses
#install.packages("ggplot2")

#Before I can use any functions from the package
#I need to load it with the library
library(ggplot2)

plot(cars)
#plot is still kind of ugly when distance vs speed
#ggplot2 will make it easier to visualize
#take data and map to aesthetics to make it look nice

#data + aesthetics + geometrys
#data + aes + geom
#Every ggplot has at least 3 layers
#these are three main "layers" that are in every ggplot

p <- ggplot(data = cars) +
  aes(x=speed, y=dist) +
  geom_point()
p+geom_line()
p+geom_smooth(method="lm")


#this is more helpful than datacamp

p + labs(title = "Data of Old Cars") + xlab("MPG") + ylab("Distance")

url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

drugtreatment <- ggplot(data=genes) + aes(x=Condition1, y=Condition2, col=State) + geom_point(alpha=0.2)
drugtreatment + labs(title = "RNA Seq Data") + xlab("Condition1") + ylab("Condition2") + 
  scale_colour_manual( values=c("orange","gray","green") )

