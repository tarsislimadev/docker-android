# docker-android

Imagem Docker para ambientes Android com Node.js

## Como usar

Crie um container com a imagem [tmvdl/android:30](https://hub.docker.com/r/tmvdl/android)

```docker
docker run --rm -it -v $(pwd):/app -w /app tmvdl/android:30 bash
```

## Tags

Algumas tags são mais especificas para desenvolvimento com frameworks Node.js

### Ionic

```bash
docker run --rm -it -p 8000:8100 -v $(pwd):/app -w /app tmvdl/android:ionic bash
```

### React Native

```bash
docker run --rm -it -p 8000:19000 -v $(pwd):/app -w /app tmvdl/android:react-native bash
```

## Publicador

Baixe esse repositório
```bash
git clone https://github.com/tmvdl/docker-android
```

Instale as dependencias com [Yarn](https://yarnpkg.com/)
```bash
yarn
```

Execute o "publicador" com [Node.js](https://nodejs.org/pt-br/)
```bash
node .
```
