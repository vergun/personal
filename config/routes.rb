Personal2::Application.routes.draw do
match '/projects' => 'pages#projects'
match '/painting' => 'pages#painting'
match '/about'    => 'pages#about'

root :to => 'pages#index'

end
