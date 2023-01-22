# Linter Flutter (dart)

# 🤔 Qu’est-ce qu’un Linter ?

Après des heures de code, vous pouvez oublier de donner un type à une classe et le compilateur lui attribue automatiquement le type dynamique.

Tout va bien parce que la compilation s'exécute avec succès, mais le code n'est pas top en termes de type et vous ne suivez donc pas les bonnes pratiques. C’est là que Linter intervient 🙏

<aside>
☝ Un linter est un outil très utile qui lit le code source et repère les erreurs de syntaxe, les constructions suspectes, les erreurs de style et bien plus encore. Par défaut, le linter de Dart est très permissif et il ne marque quelque chose comme une erreur que lorsque cela est vraiment nécessaire.

</aside>

# 👌 Un bon linter Fluter ?

Le Linter officiel :

[flutter_lints | Dart Package](https://pub.dev/packages/flutter_lints)

Un autre Linter:

[very_good_analysis | Dart Package](http://pub.dev/packages/very_good_analysis)

<aside>
🛠 Le guide d’installation est dans l’onglet installation des liens

</aside>

# 🧑‍💻 Comment modifier son Linter :

Rendre le linter et l’analyser de code plus rigide peut être intéressant car il peut découvrir des problèmes et des bugs potentiels avant même d'exécuter le code.

Pour ce faire, il est nécessaire de créer un fichier appelé analysis_options.yaml dans le même dossier que le pubspec.yaml.

Voici un exemple de analysis_options.yaml:

```yaml
include: package:lints/recommended.yaml
analyzer:
        strong-mode:
            implicit-casts: false
            implicit-dynamic: false
linter:
    rules:
         - avoid_unused_constructor_parameters
         - await_only_futures
```

- "include: " pour inclure les options de l'URL spécifiée dans ce cas, depuis un fichier dans le paquet "lints".
- "analyzer:" pour personnaliser l'analyse statique : activer des contrôles de type plus stricts, exclure des fichiers, ignorer des règles spécifiques, changer la sévérité des règles ou activer des expériences.
- "linter:" pour configurer les règles de linter.

<aside>
☝ Vous pouvez consulter la [doc Dart](https://dart-lang.github.io/linter/lints/) pour obtenir une liste complète de toutes les règles de linter.

</aside>

## Exemples:

Par exemple, par défaut, lorsqu'un fichier donné est introuvable, un avertissement est émis.

Si vous souhaitez que ce problème soit plus important, il peut être traité comme une erreur en remplaçant son degré de gravité par l'un de ces niveaux 

```yaml
analyzer:
        errors:
            include_file_not_found: error
            dead_code: warning
```

Les différents types de gravité sont les suivants:

- error : fait échouer l'analyse statique ;
- warning : l'analyse statique n'échoue pas sauf si les avertissements sont traités comme des erreurs par l'analyseur ;
- info : juste un message d'information qui ne fait pas échouer l'analyse statique ;
- ignore : ignore la règle donnée.

Autre exemple plus classique, si vous ne souhaitez pas que votre linter vous force à mettre des [commentaires](https://www.notion.so/Les-commentaires-c8c345854b0940bab20e30f8a2b9fddc), voici comment faire :

```yaml
linter:
  rules:
    public_member_api_docs: false
```

En général, la configuration par défaut est très bien comme elle est, vous n'avez pas besoin de modifier les règles et essayez d'éviter d'utiliser ignore pour cacher une erreur du Linter. Si il a des règles c’est pas par hasard 😉.

# 📚 Sources :

- F**lutter Complete Reference: Create beautiful, fast and native apps for any device**

![https://m.media-amazon.com/images/I/31QO8JTDBLL.jpg](https://m.media-amazon.com/images/I/31QO8JTDBLL.jpg)

- **Doc dart sur le Linter:**

[Customizing static analysis](https://dart.dev/guides/language/analysis-options#enabling-linter-rules)