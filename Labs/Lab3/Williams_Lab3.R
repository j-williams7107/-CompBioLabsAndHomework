#lab step #3 Add 2 variables
chipbag_start <- 5
guests <- 8

#lab step #5, addin avg bags eaten per person
avgbag_per_person <- 0.4

#lab step #7, expected amt of leftover chips, 1.4 bags left over
chipbag_start - (guests + 1)*(avgbag_per_person)

#lab step #8
# assigning ranks to each movie
self_rank <- c(7,9,8,1,2,3,4,6,5)
Penny_rank <- c(5,9,8,3,1,2,4,7,6)
Lenny_rank <- c(6,5,4,9,8,7,3,2,1)
Stewie_rank <- c(1,9,5,6,8,7,2,3,4)

#lab step #9
#Parsing out Penny and Lenny's rankins for EIV
PennyIV <- Penny_rank[4]
LennyIV <- Lenny_rank[4]

#lab step #10
#combine for vectoers into 1
AllRankings <- cbind(Lenny_rank, Penny_rank,Stewie_rank,self_rank)

#lab step #11
#provides just Penny's ranking
str(PennyIV)
#provides a list of all of Prennuy's rankings
str(Penny_rank)
#summary of All Rankings matrix shows rankings of all people
str(AllRankings)

#lab step#12
#two ways to make similar looking data frame, which also looks identical to the AllRankings matrix already made
data_frame <- data.frame(AllRankings)
as.data_frame <- as.data.frame(AllRankings)
dim(AllRankings)
str(AllRankings)
as.data_frame == data_frame
typeof(AllRankings)
# while they look the same, the matrix using cbind has different properties than the data frames
#dim() shows the number of rows and collumns
#str() shows the number of rows and number of collumns AND provides the first row
#typeof() explains that the kind of data, in this case double or with decimals
# == with objects on either side of == tests whetehr or not the two data frames are equaly, which they are

#lab step #14, adding Roman numerals
Episdoe <- c("I", "II", "III","IV","V","VI","VII", "VIII", "IX")

#lab step 15
#this allows us to put the Episode vector we just created into the first row, and then use data frame to check that it looks right
row.names(AllRankings) <- Episdoe
data.frame(AllRankings)

#lab step 16, shows info in a single row (3)
AllRankings[3,]
#labe step 17 shows info in collumn (4)
AllRankings[,4]

# lab step 18 shows my own score for episode 5 aka displays 5th row 4th collumn
AllRankings[5,4]

#lab step 19, this shows input from row 2 collumn 2
AllRankings[2,2]

#step 20 displays rows 4 to 6, all collumns
AllRankings[4:6,]

#step 21, this lets me pull just rows 2,5 &7
AllRankings[c(2,5,7),]

#step 22,  this displays rows 4 and 6 with collumns 2 & 3
AllRankings[c(4,6),c(2,3)]

#step 23
#this first part makes new vectors of Lenny's E2 & E5 rankings
LennyE2 <- AllRankings[2,3]
LennyE5 <- AllRankings[5,3]
#part 2 here replaces row 2 row 3 with the new vector created and same for the next
AllRankings[2,3] <- LennyE5
AllRankings[5,3] <- LennyE2

#step 24, this is alternative to entering row, collumn; instead enter row/collumn header
AllRankings["III","Stewie_rank"]
AllRankings["IX","self_rank"]

#step 25, now using this to change back to original by calling on previously made vectors
AllRankings["II","Lenny_rank"] <-LennyE2
AllRankings["V","Lenny_rank"] <- LennyE5
AllRankings

#step 26
#this cant be done with vector but needs to be a data frame!

LennyE2 <- data_frame$Lenny_rank[2]
LennyE5 <- data_frame$Lenny_rank[5]
data_frame$Lenny_rank[2] <-LennyE5
data_frame$Lenny_rank[5] <- LennyE2
data_frame










