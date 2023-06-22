Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # PostController
   get '/', to: 'posts#index', as: 'index_post'
   get 'posts/new',to: 'posts#new', as: 'new_post'
   post 'posts/new', to: 'posts#create', as: 'create_post'
   get 'posts/edit',to: 'posts#edit', as: 'edit_post'
 
   get 'topics/new',to: 'topics#new', as: 'new_topics'
   post 'topics/new',to: 'topics#create', as: 'create_topics'
   get 'topics/edit',to: 'topics#edit', as: 'edit_topics'
   post 'topics/edit',to: 'topics#update', as: 'update_topics'
end 

