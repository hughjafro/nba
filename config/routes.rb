Nba::Application.routes.draw do

root to: 'teams#home'

get 'teams' => 'teams#index'
get 'teams/new' => 'teams#new' #shows form to add newbies MUST BE before SHOW
 # :id allows you access to all the teams
get 'teams/:id' => 'teams#show'

get 'teams/edit/:id' => 'teams#edit' #shows form

post 'teams' => 'teams#create' #creating new Team
delete 'teams/:id' => 'teams#destroy'

end
