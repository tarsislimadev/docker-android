# Docker Android

[![github/actions/workflow/status](https://img.shields.io/github/actions/workflow/status/brtmvdl/docker-android/docker-push.yml?label=docker)](https://img.shields.io/github/actions/workflow/status/brtmvdl/docker-android/docker-push.yml) [![github/license](https://img.shields.io/github/license/brtmvdl/docker-android)](https://img.shields.io/github/license/brtmvdl/docker-android) [![github/stars](https://img.shields.io/github/stars/brtmvdl/docker-android?style=social)](https://img.shields.io/github/stars/brtmvdl/antify?style=social)

Docker image to compile Android projects.

## Documentation

Install [Docker](https://docs.docker.com/engine/install/).

```yaml
# docker-compose.yaml
version: '3'

services:
  app:
    image: tmvdl/android:sdk30
```

Run the container

```sh
docker-compose up
```

## Tags

### Ionic

```yaml
version: '3'

services:
  app:
    image: tmvdl/android:ionic
```

### React Native

```yaml
version: '3'

services:
  app:
    image: tmvdl/android:react-native
```

## License

[MIT](LICENSE)
