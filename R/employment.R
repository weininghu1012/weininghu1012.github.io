employ = read.csv(file = "/Users/weininghu/Desktop/employment1.csv", header = T, sep = ',')
install.packages("googleVis")
library(googleVis)
Motion=gvisMotionChart(employ,idvar="Gender",timevar="Year")
plot(Motion)
Motion$html$chart
cat(Motion$html$chart, file = "/Users/weininghu/Desktop/wis.html")
