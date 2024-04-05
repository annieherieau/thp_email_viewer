# Email Viewer

Email Viewer is single page app with 2 columns:

- A column showing the list of fake emails in mailbox
- A column displaying the content of the email currently being read
  
and a “synchronize” button for fake incoming messages

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
