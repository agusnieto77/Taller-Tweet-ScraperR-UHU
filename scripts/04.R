# Extracción de tweets de Timeline

# Cargar la librería TweetScraperR
library(TweetScraperR)

# Definir el perfil de Twitter que queremos analizar
user <- "coideso"

# Iniciar sesión en Twitter
# Nota: Esta función abrirá una ventana del navegador para autenticación
openTwitter()

# Navegar hacia el perfil de interés
# Esta función carga la línea de tiempo del/la usuario/a especificado/a
openTimeline(username = user)

# Extraer tweets del perfil
# Capturamos hasta 30 tweets del timeline del/la usuario/a
# El resultado se guardará en un archivo RDS en el directorio de trabajo actual
getScrollExtract(objeto = timeline, username = user, n_tweets = 30)

# Cerrar la sesión del timeline
# Importante: Siempre cerrar el timeline después de la extracción para liberar recursos
closeTimeline()

# Cerrar la sesión de Twitter
# Esto cierra completamente la sesión iniciada con openTwitter()
closeTwitter()

# Definir el perfil de Twitter que queremos analizar
user <- "elonmusk"

# Iniciar sesión en Twitter
# Nota: Esta función abrirá una ventana del navegador para autenticación
openTwitter()

# Navegar hacia el perfil de interés
# Esta función carga la línea de tiempo del/la usuario/a especificado/a
openTimeline(username = user)

# Extraer las urls de los tweets del perfil
# Capturamos hasta 30 urls del timeline del/la usuario/a
# El resultado se guardará en un archivo RDS en el directorio de trabajo actual
TweetScraperR::getScrollExtractUrls(objeto = timeline, username = user, n_tweets = 50)

# Cerrar la sesión del timeline
# Importante: Siempre cerrar el timeline después de la extracción para liberar recursos
closeTimeline()

# Cerrar la sesión de Twitter
# Esto cierra completamente la sesión iniciada con openTwitter()
closeTwitter()


(urls_post_aas <- getUrlsTweetsTimeline("GrupoESEIS", n_urls = 100))

(data_post_aas <- getTweetsData(urls_post_aas))

(post_aas <- getTweetsTimeline("GrupoESEIS", n_tweets = 400))