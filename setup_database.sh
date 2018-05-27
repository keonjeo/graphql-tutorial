#!/bin/bash  --login

echo ==== Drop the database ====
bundle exec rails db:drop

echo ==  Create the database  ==
bundle exec rails db:create

echo ==  Do a Migration for database ==
bundle exec rails db:migrate

echo ==  setup the seed data for database  ==
bundle exec rails db:seed

