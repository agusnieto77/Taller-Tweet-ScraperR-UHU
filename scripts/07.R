# Extracción de respuestas a un tweet específico

# Cargar la librería TweetScraperR
require(TweetScraperR)
require(dplyr)

img_coideso <- getTweetsData(coideso$url)

urls_img <- unique(unlist(img_coideso$links_img_post))

getTweetsImages(urls_img)

archivos_locales <- paste0("./img_x/", list.files("./img_x"))

results <- getTweetsImagesAnalysis(archivos_locales)

results <- results |> filter(!is.na(contiene_texto))

results <- results |> mutate(img = paste0("./img_x/", img))

HTMLImgReport(results=results)

# https://tweet-images-analysis.hlab.com.ar/
