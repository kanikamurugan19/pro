transactions <- list(
  c("Milk","Bread","Butter"), 
  c("Bread","Butter"), 
  c("Milk","Bread"), 
  c("Milk","Butter"), 
  c("Bread","Butter","Eggs"), 
  c("Milk","Bread","Butter"), 
  c("Milk","Eggs"), 
  c("Bread","Eggs"), 
  c("Milk","Bread","Eggs"), 
  c("Bread","Butter") 
  ) 
n <- length(transactions) 
milk_count <- sum( 
  sapply(transactions, 
         function(x) "Milk" %in% x) 
  )
bread_count <- sum( 
  sapply(transactions, 
         function(x) "Bread" %in% x) 
  ) 
milk_bread <- sum( 
  sapply(transactions, 
         function(x) all(c("Milk","Bread") %in% x)) 
  ) 
support <- milk_bread/n 
confidence <- milk_bread/milk_count 
lift <- confidence/(bread_count/n) 
cat("Association Rule\n")
cat("Milk -> Bread\n") 
cat("Support =",support,"\n") 
cat("Confidence =",confidence,"\n") 
cat("Lift =",lift,"\n")

#bbb
transactions <- list(
  c("Milk","Bread","Butter"),
  c("Bread","Butter"),
  c("Milk","Bread"),
  c("Milk","Butter"),
  c("Bread","Butter","Eggs"),
  c("Milk","Bread","Butter"),
  c("Milk","Eggs"),
  c("Bread","Eggs"),
  c("Milk","Bread","Eggs"),
  c("Bread","Butter")
)
n <- length(transactions)
items <- unique(unlist(transactions))
freq <- sapply(items,
               function(item)
               {
                 sum(sapply(transactions,
                            function(x)
                              item %in% x))
               })
support <- freq/n
frequent_itemsets <- data.frame(
  Item = items,
  Frequency = freq,
  Support = round(support,2)
)
print(frequent_itemsets)
cat("\nFrequent Itemsets\n")
print(
  frequent_itemsets[
    frequent_itemsets$Support >= 0.30,]
)


#CCC
transactions <- list(
  c("Milk","Bread","Butter"),
  c("Bread","Butter"),
  c("Milk","Bread"),
  c("Milk","Butter"),
  c("Bread","Butter","Eggs"),
  c("Milk","Bread","Butter"),
  c("Milk","Eggs"),
  c("Bread","Eggs"),
  c("Milk","Bread","Eggs"),
  c("Bread","Butter")
)
n <- length(transactions)
items <- unique(unlist(transactions))
freq <- sapply(items,
               function(item)
               {
                 sum(sapply(transactions,
                            function(x)
                              item %in% x))
               })
support <- freq/n

barplot(
  support,
  names.arg = items,
  main = "Support of Items",
  ylab = "Support"
)

pie(
  support,
  labels = items,
  main = "Item Support Distribution"
)