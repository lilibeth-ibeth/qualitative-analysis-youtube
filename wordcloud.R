library(wordcloud)

setwd("/home/R/1")

text = readLines("comment-vid-1.txt")
text = unlist(strsplit(text, "\\W+"))
text = tolower(text)
text = data.frame(table(text))

par(mar = c(14, 14, 14, 14))
wordcloud(text$text, text$Freq)
stopw = readLines("stopwords-id.txt")
text = text[!is.element(text$text, stopw),]

wordcloud(text$text, text$Freq, random.order=FALSE, rot.per=0.25
          , colors=brewer.pal(8, "Dark2"))
