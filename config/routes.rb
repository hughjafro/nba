Nba::Application.routes.draw do
 get 'teams' => 'teams#index'
 # :id allows you access to all the teams
 get 'teams/:id' => 'teams#show'
end
