harrypotter2 <- c(500.999, 356.8)
legacy <- c(150.3, 100.600)
fantasticbeasts <- c(349.874, 206.643)
bookssold <- c(harrypotter2, legacy, fantasticbeasts)
bookssold
books <- matrix(bookssold, byrow=TRUE, nrow=3)
books

type <- c("Paper", "Ebook")
titles <- c("Harry Potter and the Chamber of Secrets", "Legacy", "Fantastic Beasts and Where to Find Them")
colnames(books) <- type
rownames(books) <- titles
books

worldwidesold <- rowSums(books)
worldwidesold

allBooks <- cbind(books, worldwidesold)
allBooks

bookssold2 <- c(784.9, 535.7, 856.9, 567.4)
books2 <- matrix(bookssold2, nrow = 2, byrow = TRUE, dimnames = list(c("Harry Potter and the Philosopher's Stone", "It")))
allBooks <- rbind(books, books2)
allBooks

totalSold <- colSums(allBooks)
totalSold

nonPaperAll <- allBooks[,2]
nonPaperAll
mean(nonPaperAll)
nonPaperAll <- allBooks[1:3, 2]
nonPaperAll
mean(nonPaperAll)

boughtKindle <- all_wars_matrix[,2]/3
boughtKindle