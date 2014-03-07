# Minimalistic web app template

*One-file backend, one-file frontend*

Backed by Sinatra and optionally Grape for APIs.

Single-page client app with Backbone.js and Bootstrap.

Great for demos and quick hacking. Production use at your own risk.


## What you get

**Back-end**
  * Sinatra and Grape
  * Unicorn server
  * ActiveRecord
  * Ready to deploy on Heroku
  * Database migrations with `rake db:migrate`
  * A Rails-like console with `rake console`

**Front-end**
  * Bootstrap
  * Backbone.js
  * Lo-dash
  * jQuery


## What you don't get (by design)

  * A testing framework (but it's easy to add if you need one)
  * Well-organized models, views, controllers, presenters...
  * CoffeeScript. Just good old Javascript straight into `views/index.erb`.
  * LESS or SASS. And guess where your CSS goes?


## Usage

Create an `.env` file with the following:

```bash
# the URL of your application database
DATABASE_URL=postgres://localhost/app_name
```

Run with `foreman`:

```bash
$ foreman start -p 5000
```


## Development

### The two files

All the frontend stuff goes in `views/index.erb`

All the backend stuff goes in `app.rb`. The root route should render
`index.erb` which loads your single-page app, and other routes should
expose a JSON api that the app talks to.

### Rake tasks

> Remember to always run these with `foreman`, or your environment
> variables will be ignored: `foreman run rake task_name`

  * `rake db:migrate` and `rake db:rollback` run database
    migrations, _à-la_ Rails

  * `rake console` opens a shell into the app, just like
    `rails console`

  * `rake routes` lists the routes exposed by the App
