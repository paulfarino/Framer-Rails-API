# Framer-Rails-API
Quickly scaffold a Rails Api to use with your Framer Prototypes

## Setup

Create a Rails 5 API

    rails new your_api_name --api

Generate a full scaffold(model, controller, db migration, resource, tests):

    rails g scaffold users name:text title:text

Migrate the DB:

    rails db:migrate

Update params:

    change params.require(:user).permit(:name, :title) >> to >> params.permit(:name, :title)

Seed the DB:

    rails db:seed

-------------
Brought to you by [Paul Farino](https://github.com/paulfarino)
