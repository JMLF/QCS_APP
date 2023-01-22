# Git et GitHub

## Git vs Github 🤔

![https://devmountain.com/wp-content/uploads/2022/01/Gitvs_Github-1a-1.jpg](https://devmountain.com/wp-content/uploads/2022/01/Gitvs_Github-1a-1.jpg)

source : [https://devmountain.com/blog/git-vs-github-whats-the-difference/](https://devmountain.com/blog/git-vs-github-whats-the-difference/)

## Installation Git et Github

- Un bon petit lien pour installer Git et Github sur Android Studio [https://stackoverflow.com/questions/37093723/how-to-add-an-android-studio-project-to-github](https://stackoverflow.com/questions/37093723/how-to-add-an-android-studio-project-to-github)

## Les commandes de bases

- Source : [https://www.freecodecamp.org/news/10-important-git-commands-that-every-developer-should-know/](https://www.freecodecamp.org/news/10-important-git-commands-that-every-developer-should-know/)

## Comment organiser ses branches ?  🌴

Vous allez voir une manière d’organiser ses branches pour assurer une mise production optimale 

Lien Figma : ‣

## Des commits de qualités ! 👌

### Comment écrire un commit:

```bash
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

Exemple :

```bash
feat(message): Add send message feature 

Introduce a new way to communicate between user
```

- Source : [https://www.conventionalcommits.org/en/v1.0.0/](https://www.conventionalcommits.org/en/v1.0.0/)

### Les différents “types” de commit :

- **build** : Changements qui affectent le système de “build” ou les dépendances externes (exemples  : gulp, broccoli, npm)
- **ci** : Changements apportés aux fichiers de configuration et aux scripts de notre système d'intégration des données (exemples : Travis, Circle, CodeMagic).
- **docs** : Modifications de la documentation uniquement
- **feat** : Une nouvelle fonctionnalité (feature)
- **fix** : Une correction de bug
- **perf** : Un changement de code qui améliore les performances
- **refactor** : Un changement de code qui ne corrige pas un bug et n'ajoute pas de fonctionnalité. (exemples : on change le nom de la variable userAdresse par userAdr)
- **style** : Changements qui n'affectent pas la signification du code (espaces, formatage, points-virgules manquants, etc).
- **test** : Ajout de tests manquants ou correction de tests existants

Source :  [https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#-commit-message-guidelines](https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#-commit-message-guidelines)

## Gérez son versioning 🚀

- Source :  [https://semver.org/](https://semver.org/)

## Un peu de pratique  🧑‍💻

- Formation vidéo :
    - Créer un repo sur Github (sans le readme)
    - Rebase le projet [chat_app_v3](https://github.com/Arnooow/chat_app_v3) sur son GitHub perso
        
        ```bash
        git remote remove origin
        git remote add origin [VOTRE URL]
        ```
        
    - Ajouter son associé 🤝
    - main to dev to "branch_feat”
        - Changement de couleur
        - Commit sur la branch et faire pull request
    - Demander à son associé de valider (ou pas) la pull request

