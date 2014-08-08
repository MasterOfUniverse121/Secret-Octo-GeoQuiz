Rails.application.routes.draw do
  get '/sessions/new' => 'sessions#new'
  get '/sessions/create' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
  get '/sessions/wrong' => 'sessions#wrong'
  get '/sessions/out' =>'sessions#out'
  get '/show' => 'application#show'
  get '/donate' => 'application#donate'
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
	# GRADE
	get '/questions/:id/grade' => 'questions#grade'
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
root :to => 'application#show'
end
