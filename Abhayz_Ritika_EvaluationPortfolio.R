## Intake/ Graduating students

## IIT Madras

iitMadras<-data.frame(UG4=c(762,488,466,466,NA),
                      UG5=c(157,358,372,372,372),
                      y=c('2019-20','2018-19','2017-18','2016-17','2015-16'))

library(ggplot2)
ggplot(iitMadras)+
  geom_point(aes(y,UG4), col='red')+
  geom_point(aes(y,UG5), col='blue')+
  labs(title = "IIT Madras intake", subtitle = "UG(4 and 5 year program)",
       x="Year",y="No. of students")
  
# Maximum number of students intake in UG 4 year program
# is in the year 2019-20.
# Maximum number of students intake in UG 5 year program
# is in the year 2015-16, 2016-17, 2017-18. 


## IIT Delhi

iitDelhi<-data.frame(UG4=c(938,798,749,749,NA),
                      UG5=c(123,109,102,102,102),
                      y=c('2019-20','2018-19','2017-18','2016-17','2015-16'))
ggplot(iitDelhi)+
  geom_point(aes(y,UG4), col='red')+
  geom_point(aes(y,UG5), col='blue')+
  labs(title = "IIT Delhi intake", subtitle = "UG(4 and 5 year program)",
       x="Year",y="No. of students")

# Maximum number of students intake in UG 4 year program
# is in the year 2019-20.
# Maximum number of students intake in UG 5 year program
# is in the year 2019-20. 


## IIT Bombay

iitBombay<-data.frame(UG4=c(773,729,729,717,NA),
                     UG5=c(178,168,142,154,154),
                     y=c('2019-20','2018-19','2017-18','2016-17','2015-16'))
ggplot(iitBombay)+
  geom_point(aes(y,UG4), col='red')+
  geom_point(aes(y,UG5), col='blue')+
  labs(title = "IIT Bombay intake", subtitle = "UG(4 and 5 year program)",
       x="Year",y="No. of students")

# Maximum number of students intake in UG 4 year program
# is in the year 2019-20.
# Maximum number of students intake in UG 5 year program
# is in the year 2019-20.


## IIT Kanpur

iitKanpur<-data.frame(UG4=c(907,910,827,827,NA),
                      y=c('2019-20','2018-19','2017-18','2016-17','2015-16'))

ggplot(iitKanpur, aes(y,UG4))+
  geom_point(col='green')+
  labs(title = "IIT Kanpur intake", subtitle = "UG(4 year program)",
       x="Year",y="No. of students")+
  ylim(c(500,1000))

# Maximum number of students intake in UG 4 year program
# is in the year 2018-19.


## IIT Kharagpur

iitKharagpur<-data.frame(UG4=c(785,676,656,656,NA),
                      y=c('2019-20','2018-19','2017-18','2016-17','2015-16'))

ggplot(iitKharagpur, aes(y,UG4))+
  geom_point(col='yellow')+
  labs(title = "IIT Kharagpur intake", subtitle = "UG(4 year program)",
       x="Year",y="No. of students")+
  ylim(c(500,1000))

# Maximum number of students intake in UG 4 year program
# is in the year 2018-19.


################################################

# Placements and Higher Studies

## For the year 2014-15

a<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
              no_of_students=c(441,759,682,809,641))
ggplot(a, aes(clg,no_of_students))+
  geom_bar(stat = 'identity', fill="yellow", color="black")+
  labs(title = "Placements and Higher Studies",
       subtitle = "For the year 2014-15",
       x="Institutions",
       y="Number of students")+
  geom_text(aes(label = no_of_students),size=3,vjust=-0.5)

# Maximum number of students admitted in the year 2014-15
# are in IIT Kanpur.


## For the year 2015-16

b<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
              no_of_students=c(458,759,666,803,637))
ggplot(b, aes(clg,no_of_students))+
  geom_bar(stat = 'identity', fill="pink", color="black")+
  labs(title = "Placements and Higher Studies",
       subtitle = "For the year 2015-16",
       x="Institutions",
       y="Number of students")+
  geom_text(aes(label = no_of_students),size=3,vjust=-0.5)

# Maximum number of students admitted in the year 2015-16
# are in IIT Kanpur.


## For the year 2016-17

c<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
              no_of_students=c(465,751,716,826,655))
ggplot(c, aes(clg,no_of_students))+
  geom_bar(stat = 'identity', fill="green", color="black")+
  labs(title = "Placements and Higher Studies",
       subtitle = "For the year 2016-17",
       x="Institutions",
       y="Number of students")+
  geom_text(aes(label = no_of_students),size=3,vjust=-0.5)

# Maximum number of students admitted in the year 2014-15
# are in IIT Kanpur.


#####################################

## Funding Received

## For the year 2019-20

A<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
              amt=c(1715292173,2275026000,2297748211,2389745850,648432016))

ggplot(data=A, aes(x=clg, y=amt)) +
  geom_bar(stat='identity',fill = "cornflowerblue",color="black") +
  labs(x="Institution", y="Amount",title="Total Amount Received", subtitle = "For the year 2019-20") +
  geom_text(aes(label = amt),size=3,vjust=-0.5) +
  scale_y_continuous(labels = scales::comma)

# Highest Amount received by IIT Kanpur
# Least Amount received by IIT Kharagpur


## For the year 2018-19

B<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
              amt=c(1368492534,2048965952,2298187443,1974913396,1349147118))

ggplot(data=B, aes(x=clg, y=amt)) +
  geom_bar(stat='identity',fill = "yellow",color="purple") +
  labs(x="Institution", y="Amount",title="Total Amount Received", subtitle = "For the year 2018-19") +
  geom_text(aes(label = amt),size=3,vjust=-0.5) +
  scale_y_continuous(labels = scales::comma)

# Highest Amount received by IIT Bombay
# Least Amount received by IIT Kharagpur


## For the year 2017-18

C<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
              amt=c(1057716173,5411417468,2035039984,1747013587,2051250000))

ggplot(data=C, aes(x=clg, y=amt)) +
  geom_bar(stat='identity',fill = "red",color="brown") +
  labs(x="Institution", y="Amount",title="Total Amount Received", subtitle = "For the year 2017-18") +
  geom_text(aes(label = amt),size=3,vjust=-0.5) +
  scale_y_continuous(labels = scales::comma)

# Highest Amount received by IIT Delhi
# Least Amount received by IIT Madras


#######################################

## Spending Pattern
## Expenditure on salaries (Teaching and non-teaching staff)

## For the year 2019-20

salA<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
              amt=c(5602172731,3428644542,2793949100,2682258598,2397988057))

ggplot(data=salA, aes(x=clg, y=amt)) +
  geom_bar(stat='identity',fill = "green",color="yellow") +
  labs(x="Institution", y="Expenditure Amount",title="Total Expenditure on Salaries", subtitle = "For the year 2019-20") +
  geom_text(aes(label = amt),size=3,vjust=-0.5) +
  scale_y_continuous(labels = scales::comma)

# Highest Expenditure on salaries by IIT Madras
# Least Expenditure on salaries by IIT Kharagpur


## For the year 2018-19

salB<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
              amt=c(4757984997,3149997422,2411615557,2368800000,2483324100))

ggplot(data=salB, aes(x=clg, y=amt)) +
  geom_bar(stat='identity',fill = "grey",color="pink") +
  labs(x="Institution", y="Expenditure Amount",title="Total Expenditure on Salaries", subtitle = "For the year 2018-19") +
  geom_text(aes(label = amt),size=3,vjust=-0.5) +
  scale_y_continuous(labels = scales::comma)

# Highest Expenditure on salaries by IIT Madras
# Least Expenditure on salaries by IIT Kanpur


## For the year 2017-18

salC<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
              amt=c(4186317653,2938334866,1851253274,2476200000,1570050808))

ggplot(data=salC, aes(x=clg, y=amt)) +
  geom_bar(stat='identity',fill = "purple",color="green") +
  labs(x="Institution", y="Expenditure Amount",title="Total Expenditure on Salaries", subtitle = "For the year 2017-18") +
  geom_text(aes(label = amt),size=3,vjust=-0.5) +
  scale_y_continuous(labels = scales::comma)

# Highest Expenditure on salaries by IIT Madras
# Least Expenditure on salaries by IIT Kharagpur


## Spending Pattern
## Expenditure on Seminars/Conferences/Workshops

## For the year 2019-20

WorkA<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
                 amt=c(171971644,13001549,31042409,51900000,30364822))

ggplot(data=WorkA, aes(x=clg, y=amt)) +
  geom_bar(stat='identity',fill = "green",color="yellow") +
  labs(x="Institution", y="Expenditure Amount",title="Total Expenditure on Seminars/Conferences/Workshops", subtitle = "For the year 2019-20") +
  geom_text(aes(label = amt),size=3,vjust=-0.5) +
  scale_y_continuous(labels = scales::comma)

# Highest Expenditure on workshops by IIT Madras
# Least Expenditure on workshops by IIT Delhi


## For the year 2018-19

WorkB<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
                 amt=c(274675976,12181807,25232526,51100000,45360958))

ggplot(data=WorkB, aes(x=clg, y=amt)) +
  geom_bar(stat='identity',fill = "grey",color="pink") +
  labs(x="Institution", y="Expenditure Amount",title="Total Expenditure on Seminars/Conferences/Workshops", subtitle = "For the year 2018-19") +
  geom_text(aes(label = amt),size=3,vjust=-0.5) +
  scale_y_continuous(labels = scales::comma)

# Highest Expenditure on workshops by IIT Madras
# Least Expenditure on workshops by IIT Delhi


## For the year 2017-18

WorkC<-data.frame(clg=c("IITMadras","IITDelhi","IITBombay","IITKAnpur","IITKharagpur"),
                 amt=c(276382767,7558331,28408263,61200000,64792095))

ggplot(data=WorkC, aes(x=clg, y=amt)) +
  geom_bar(stat='identity',fill = "purple",color="green") +
  labs(x="Institution", y="Expenditure Amount",title="Total Expenditure on Seminars/Conferences/Workshops", subtitle = "For the year 2017-18") +
  geom_text(aes(label = amt),size=3,vjust=-0.5) +
  scale_y_continuous(labels = scales::comma)

# Highest Expenditure on workshops by IIT Madras
# Least Expenditure on workshops by IIT Delhi


## Finally we can say from the analysis that the rankings
# of the institutions are quite appropriate.