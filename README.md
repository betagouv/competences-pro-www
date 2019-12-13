# Site vitrine d'eva

Ce dépôt contient le code source du site web vitrine du projet eva.

Il est actuellement en cours d'intégration.

[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

Pour voir les autres projets de eva:

- [la partie cliente](https://github.com/betagouv/eva)
- [la partie serveur](https://github.com/betagouv/eva-serveur)
- [la partie orchestration](https://github.com/betagouv/eva-orchestrateur)

## Usage en développement

Ce site web est développé à l'aide d'[Hugo][hugo] que vous devez installer.

```
npm install
hugo server
```

## Déployer avec docker

```
docker build -t eva-www . && docker run --rm -ti -p 3000:80 eva-www
```

## Licence

Ce logiciel et son code source sont distribués sous licence AGPL.

[hugo]: https://gohugo.io/
