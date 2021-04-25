# Docker Android

Imagem Docker para compilaçao de projetos Android

## Como usar

Instalar o [Docker](https://docs.docker.com/engine/install/).

Criar um arquivo `docker-compose.yaml` na raiz do projeto com a imagem [tmvdl/android:30](https://hub.docker.com/r/tmvdl/android).

```yaml
# docker-compose.yaml
version: '3'

services:
  app:
    image: tmvdl/android:30
    volumes:
      - .:/app
```

Subir o container para a construção do build

```bash
docker-compose up --build
```

## Tags

Algumas tags são mais especificas para desenvolvimento com frameworks Node.js

### Cordova

```yaml
version: '3'

services:
  app:
    image: tmvdl/android:cordova
    volumes:
      - .:/app
      - ./builds:/builds
```

### Ionic (com Cordova)

```yaml
version: '3'

services:
  app:
    image: tmvdl/android:ionic
    volumes:
      - .:/app
      - ./builds:/builds
```

### React Native

```yaml
version: '3'

services:
  app:
    image: tmvdl/android:react-native
    volumes:
      - .:/app
      - ./builds:/builds
```

## License

[MIT](LICENSE)
