# Email Viewer

Email Viewer est un gmail-like sur seule et unique page avec 2 colonnes :

- Une colonne contenant la liste des emails en base
- Une colonne affichant le contenu de l'email sur lequel l'utilisateur vient de cliquer
- synchroniser: nouveaux messages entrants

## 2. Démo 
- [ https://raymote-it-mvp.fly.dev/](https://thp-email-viewer.fly.dev/)

## Stack et Installation
### Stack
- Ruby 3.2.2
- Rails 7.1.3.2
### Installation locale
Clone repository

Install dépendencies

```bash
bundle install
```

Database

```bash
rails db:create
rails db:migrate
rails db:seed
```

Launch server

```bash
rails server
```
