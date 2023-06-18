Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # PostController
   get 'posts/new',to: 'posts#new', as: 'new_post'
   get 'posts/edit',to: 'posts#edit', as: 'edit_post'
   
end 
