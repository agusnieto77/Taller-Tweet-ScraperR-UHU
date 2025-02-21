# Extracción de tweets Históricos

# Cargar la librería TweetScraperR
library(TweetScraperR)

(hashtag_8m <- getTweetsHistoricalHashtag(
  hashtag = "#8M",  
  n_tweets = 300,  
  since = "2018-03-08_15:50:00_UTC",  
  until = "2018-03-08_16:00:00_UTC"))

