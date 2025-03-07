Rails.application.routes.draw do
  # Admin Routes
  get 'admin/home', to: 'admin#home', as: 'admin_home'  # Admin home page

  # Sessions Routes
  get 'sessions/new'
  post 'sessions/create'
  
  # Change the logout route to use GET
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # Add routes for login
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'

  # Resource routes for CRUD operations
  resources :quotes
  resources :categories
  resources :philosophers

  # Resource routes for users with custom delete route
  resources :users do
    member do
      delete 'delete', to: 'users#destroy', as: 'delete_user' # Custom delete route
    end
  end

  # Custom routes for user authentication
  get 'signup', to: 'users#new', as: 'new_user_registration'  # Route for sign up
  post 'signup', to: 'users#create'  # Route to create a new user
  get 'signin', to: 'sessions#new', as: 'new_user_session'  # Route for sign in
  post 'signin', to: 'sessions#create'  # Route to create a session

  # Custom routes for additional actions
  get 'search_quotes', to: 'quotes#search', as: 'search_quotes'  # For searching quotes
  get 'my_quotes', to: 'quotes#my_quotes', as: 'my_quotes'  # For showing current user's quotes
  get 'about', to: 'pages#about', as: 'about'  # Route for About Us page

  # Define the root path route ("/")
  root 'pages#home'  # Adjusted to my homepage
end
