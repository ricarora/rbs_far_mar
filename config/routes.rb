Rails.application.routes.draw do
  # post "products/create"
  #
  # post "sales/create"
  #

  #
  # get "/vendors", to: "vendors#index"
  # post "/vendors/create", to: "vendors#create"
  get "/", to: "vendors#index"
  get "/vendors/new", to: "vendors#new"
  get "/markets/new", to: "markets#new"

  post "/vendors", to: "vendors#create"
  post "/markets", to: "markets#create"
  post "/", to: "vendors#index"

  get "/vendors/:id/edit", to: "vendors#edit", as: :edit_vendor
  put "/vendors/:id", to: "vendors#update"

  delete "/vendors/:id", to: "vendors#delete", as: :destroy_vendor

  root "vendors#index"

  # post "vendors#index"

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
