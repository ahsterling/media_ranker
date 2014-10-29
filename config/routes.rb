Rails.application.routes.draw do

  resources :books, :albums, :movies
  # get '/',                to: "home#index"

  # get '/books',           to: "books#index",  as: :books
  # post '/books',          to: "books#create"
  # get '/books/:id',       to: "books#show",   as: :book
  # patch '/books/:id',     to: "books#update"
  # delete '/books/:id',    to: "books#destroy"
  # get '/books/new',       to: "books#new",    as: :new_book
  # get '/books/:id/edit',  to: "books#edit",   as: :edit_book


  # get '/movies',          to: "movies#index", as: :movies
  # post 'movies',          to: "movies#create"
  # get '/movies/:id',      to: "movies#show",  as: :movie
  # patch '/movies/:id',    to: "movies#update"
  # delete '/movies/:id',   to: "movies#destroy"
  # get '/movies/new',      to: "movies#new",   as: :new_movie
  # get '/movies/:id/edit', to: "movies#edit",  as: :edit_movie


  # get "/albums",          to: "albums#index", as: :albums
  # post '/albums',         to: "albums#create"
  # get '/albums/:id',      to: "albums#show",  as: :album
  # patch '/albums/:id',    to: "albums#update"
  # delete '/albums/:id',   to: "albums#destroy"
  # get '/albums/new',      to: "albums#new",   as: :new_album
  # get '/albums/:id/edit', to: "albums#edit",  as: :edit_album

  root to: "home#index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
