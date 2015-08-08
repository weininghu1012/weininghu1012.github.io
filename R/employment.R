install.packages("googleVis")
library(googleVis)
employ = read.csv(file = "/Users/weininghu/Desktop/employment1.csv", header = T, sep = ',')

Motion=gvisMotionChart(employ,idvar="Gender",timevar="Year")
plot(Motion)
Motion$html$chart
cat(Motion$html$chart, file = "/Users/weininghu/Desktop/wis.html")


fe = read.csv(file = "/Users/weininghu/Desktop/weininghu1012.github.io/R/female_engineer.csv")
head(fe)
# The order of the company, bubble color change according to the company
# ALL
# Dropbox
# Yelp
# Pinterest
# PayPal(Braintree)
# Etsy
# Airbnb
# GitHub
# Foursquare
# Eventbrite
# Flipboard
# Yahoo(Flicker)
# HootSuite
# Stack Exchange
# Khan Academy
# Quora
# Coursera
# Facebook(Parse)
# Snapchat
# Codecademy
# The New York Times(New Products)
head(fe)
fe = fe[-1,]
head(fe)
Bubble = gvisBubbleChart(fe, idvar = "company",xvar = "num_female_eng",yvar = "percent_female_eng",colorvar = "company",sizevar = "num_eng",
                         options=list(colors="['#2895F1','#c41200','#C92228','#0079ad','#f45800','#fd5c63','#333333','#f94877',
                                      '#F3844C','#e12828','#400191','#71685f','#366fb3','#9cb443','#a82400','#3A6D8E','#3b5998',
                                     '#fffc00','#204056','#000']", width="1600px", height="900px"，vAxes="[{title:'Number of female engineer'}, {title:'Percentage of female engineer'}]"))
plot(Bubble)
