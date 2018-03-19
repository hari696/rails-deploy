# RailsDeploy - Ruby on Rails

## Overview.

Here you find a practice on how to create a rails app and deploy it on Remote Server by using [capistrano](https://github.com/capistrano/rails "capistrano") gem. App has been created and tested in [Digital Ocean](https://www.digitalocean.com/ "Digital Ocean"). By default `mysql` is used as Database Server (You can change this by adding dependency in Gem file). This project can be used as a boiler plate for rails app to deploy on `production` server. For change of staging follow the steps stated below.

## Installation

```sh
git clone https://github.com/hari696/rails_deploy.git
cd rails_deploy
bundle install
```
## Configurations

1. On your deploy.rb file: `application`, `repo_url` and `deploy_to` change accordingly.
2. Change database name from `rails_deploy_development` to `databasename` in database.yml file.
3. In `config/deploy/production.rb` file mention `stage`, `rails_env` and update IP Address in `root@192.168.0.1`.
4. For more configurations [capistrano](https://github.com/capistrano/rails "capistrano").
5. Change database names and username & password in `config/database.yml` file.

## Deployed

![Alt text](https://raw.githubusercontent.com/hari696/rails_deploy/master/public/deployed_successfully.png "Title")

After successfull deployment you can this screen on your root Ip Address.

## Development

For developing rails app follow offical [documentation](http://guides.rubyonrails.org/ "Rails Guides")