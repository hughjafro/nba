Nba::Application.routes.draw do
	# resources :problems

root to: 'teams#home'

get 'teams' => 'teams#index'
get 'teams/new' => 'teams#new' #shows form to add newbies MUST BE before SHOW
 # :id allows you access to all the teams
get 'teams/:id' => 'teams#show'

get 'teams/edit/:id' => 'teams#edit' #shows form

post 'teams' => 'teams#create' #creating new Team
delete 'teams/:id' => 'teams#destroy'


# root to: 'users#new'

get 'users/new' => 'users#new'
# get 'users/:id' => 'users#show'
post 'users' => 'users#create'

get 'authentications/new' => 'authentications#new'
post 'authentications' => 'authentications#create'
end
