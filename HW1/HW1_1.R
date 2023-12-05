all_books <- read.csv("books.csv")
print(head(all_books, 5))
filtered_books <- all_books[all_books$numRatings >= 10000, ]
#filtered_books$rating <- filtered_books$rating * 20
filtered_books$rating <- sapply(filtered_books$rating, function(x) 20 * x)
popularity <- (filtered_books$rating * 5 + filtered_books$likedPercent * 2) / 7
filtered_books$popularity = popularity
filtered_books <- filtered_books[order(filtered_books$popularity,
                                       filtered_books$publish.year,
                                       filtered_books$author,
                                       decreasing = TRUE), ]
return_nrows = function(df, n) head(df, n)
top_10 = return_nrows(filtered_books, 10)
print(top_10[, c('title', 'author', 'publish.year', 'publisher')])
