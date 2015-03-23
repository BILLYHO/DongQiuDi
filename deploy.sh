heroku pg:reset DATABASE --confirm dongqiudi
heroku run rake db:migrate
heroku run rake db:seed