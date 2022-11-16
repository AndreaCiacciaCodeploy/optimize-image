# optimize-image
Script bash per compressione e resize immagini.
Vengono usate due librerie:
- pngquant (https://pngquant.org/). Utility per la compressione delle immagini PNG
- magick (https://imagemagick.org/). Utility per il resize delle immagini

## Avvia con docker

Usare il Dockerfile per creare una nuova immagine.

- docker image build --no-cache -t optimizeimage:0.1 .
- docker run  --rm -it -v $(pwd)/images/:/optimize optimizeimage:0.1

E' possibile usare il run.sh per eseguire docker run.
Inserire le immagini da comprimere/ridurre dentro cartella images/in
