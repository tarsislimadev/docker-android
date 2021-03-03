# docker-android

Imagem Docker para ambientes Android com Node.js

## Como usar

Crie um container com a imagem [tmvdl/android:30](https://hub.docker.com/r/tmvdl/android)

```docker
docker run --rm -it -v $(pwd):/app -w /app tmvdl/android:30 bash
```
