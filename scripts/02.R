# Extracción de respuestas a un tweet específico

# Cargar la librería TweetScraperR
require(TweetScraperR)

# Definir la URL del post (tweet) del cual se desean obtener las respuestas
url_post <- "https://x.com/ArrepentidosLLA/status/1892601435117797596"

openTwitter()

# Obtener las URLs de las respuestas al tweet original.
# La función `getUrlsTweetsReplies` devuelve las URLs de las respuestas de un tweet en particular.
(urls_replies <- getUrlsTweetsReplies(url_post, n_urls = 50))
