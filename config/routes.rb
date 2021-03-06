Rails.application.routes.draw do

  devise_for :users, path: 'auth'

  resources :users, except: [:new, :create]

  resources :vaults

  match 'cyborg', to: 'pages#cyborg', via: :get
  match 'readable', to: 'pages#readable', via: :get
  match 'cosmo', to: 'pages#cosmo', via: :get
  match 'simplex', to: 'pages#simplex', via: :get
  match 'flatly', to: 'pages#flatly', via: :get

  post 'themes/:theme' => 'themes#setting', as: :set_theme
  post 'time_zones/:time_zone' => 'time_zones#setting', constraints: { time_zone: /.*/ }, as: :set_time_zone

  constraints(Subdomain) do
    match '/' => 'goldbricks#index', via: [:get]
    resources :goldbricks
  end

  get '(errors)/:status', to: 'errors#show', constraints: { status: /\d{3}/ }, as: :errors

  root controller: 'home', action: 'index'

  # root controller: 'static', action: '/'

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
