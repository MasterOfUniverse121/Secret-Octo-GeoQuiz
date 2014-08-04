Rails.application.routes.draw do
  get '/sessions/new' => 'sessions#new'
  get '/sessions/create' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
  get '/show' => 'application#show'
  # Routes for the Question resource:
  # CREATE
  get '/new_question' => 'questions#new'
  get '/create_question' => 'questions#create'

  # READ
  get '/questions' => 'questions#index'
  get '/questions/:id' => 'questions#show'

  # UPDATE
  get '/questions/:id/edit' => 'questions#edit'
  get '/questions/:id/update' => 'questions#update'

  # DELETE
  get '/questions/:id/destroy' => 'questions#destroy'
  #------------------------------

  # Routes for the Quiz resource:
  # CREATE
  get '/new_quiz' => 'quizzes#new'
  get '/create_quiz' => 'quizzes#create'

  # READ
  get '/quizzes' => 'quizzes#index'
  get '/quizzes/:id' => 'quizzes#show'

  # UPDATE
  get '/quizzes/:id/edit' => 'quizzes#edit'
  get '/quizzes/:id/update' => 'quizzes#update'

  # DELETE
  get '/quizzes/:id/destroy' => 'quizzes#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

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
