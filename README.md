# WebTech #1 - Les Zoreilles

## Utilisation

Clonez ce repo, puis créez un fichier `.env` à la racine,
et entrez-y les paramètres suivants:

```bash
# URL de votre base de données Postgresql locale
DATABASE_URL=postgres://localhost/app_name
```

Installez le gem `foreman` et lancez l'application avec:

```bash
$ foreman start -p 5000
```

Enfin, rendez-vous sur [http://localhost:5000](http://localhost:5000).
