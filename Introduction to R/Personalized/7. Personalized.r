book <- "Harry Potter and the Chamber of Secrets"
mainChars <- c("Harry Potter", "Ron Weasly", "Hermione Granger", "Voldemort")
reviews <- c("A bit bland at times, with less wonder and discovery than before, but finishes well with a more satisfying conclusion.", "An amazing book and saga.", "Most boring book from the saga.", "Best book ever!", "No comments.")
reviews
ratings <- c(3, 5, 1, 5, 1)
ratings
sources <- c("GoodReads", "Google", "Barnes & Noble", "GoodReads", "Google")
sources
rev <- data.frame(ratings, sources, reviews)
rev
class(rev)
harrypotter2 <- list(bookname = book, characters = mainChars, review = rev)
harrypotter2 

harrypotter2$characters
harrypotter2$characters[3]

hp2Year <- c(harrypotter2, year = 1999)
hp2Year
str(hp2Year)
