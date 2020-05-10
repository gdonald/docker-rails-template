### docker-rails-template

Simple Rails app running in a Docker container.

#### Build Docker Image

`docker build .`

#### Install Ruby Gems

`docker-compose run --rm web bundle install`

#### Install Javascript Modules

`docker-compose run --rm web yarn install --check-files`

#### Launch Containers

`docker-compose up`

#### Initialize DB

`docker-compose run --rm web bundle exec rake db:create db:migrate db:seed`

#### Example

`/welcome` - Redis.

`/pages/home` - ReactJS Component.

`/users` - Rails Scaffold.
