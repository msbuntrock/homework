# Complete all of the items below
# Use comments where you're having trouble or questions

# 1. Read your data set into R
result <- read_csv("~/Downloads/result.csv")
View(result)

# 2. Peek at the top few rows
head(result)

# 3. Peek at the top few rows for only a few columns
head(result$TBIFlag)

# 4. How many rows does your data have?
nrow(result)

# 5. Get a summary for every column
 summary(result)

# 6. Get a summary for one column
 summary(result$TBIFlag)

# 7. Are any of the columns giving you unexpected values?
 no

# 8. Select a few key columns, make a vector of the column names
 key.columns<- c("TBIFlag", "DataValue", "DataElement")
 
# 9. Create a new data.frame with just that subset of columns
key.cols <- data.frame(key.columns)

# 10. Create a new data.frame that is just the first 10 rows

heads<- data.frame(head(result, 10))

#     and the last 10 rows of the data from the previous step

heads.n.tails<- data.frame(head(result, 10) + tail(result, 10))

# 11. Create a new data.frame that is a random sample of half of the rows.
# HINT: ?sample

rand.samp <- sample_frac(result, .5)

# 12. Find a comparison in your data that is interesting to make
#     (comparing two sets of numbers)
#     - run a t.test() (or cor.test()) for that comparison
#     - decide whether you need a non-default test
#       (e.g., Student's, paired)
#     - run the test with BOTH the formula and "vector"
#       formats, if possible
#     - if one is NOT possible, say why you can't do it
result$ethnicity<- result$DataType == "Characteristic: Race"
cor.test(TBIFlag~ethnicity, result)

t.test(result$ethnicity, result$TBIFlag, method = "pearson")

# 13. Repeat #12 for TWO more comparisons
#     - Tip: it's okay if the comparisons are kind of nonsensical, this is 
#       just a programming exercise

Flagged.TBI.F <- result[7, 3]
not.flagged.TBI.F <- result[8, 3]
t.test(Flagged.TBI.F, not.flagged.TBI.F)

cor.test(TBIFlag~DataValue, result)

# 14. Save all results from #12 and #13 in an .RData file

# 15. Email me your version of this script, PLUS the .RData
#     file from #14
#     - ALTERNATIVELY, push your version of this script and your .RData results
#       to a repo on GitHub, and send me the link


