Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_device_infos
    end
  end
 require 'sidekiq/web'

  resources :users
  root to: "users#new"
  mount Sidekiq::Web, at: '/sidekiq'
	get '/schools' => "schoollist#index"
	get '/school/:id' => "schoollist#show", as: :school
	get '/school/:id/standard' => "schoollist#standard", as: :standard
	get '/standard/:id' => "schoollist#show_standard", as: :show_standard
	get '/standard/:id/section' => "schoollist#section", as: :section
	get '/standard/:id/section/:id' => "schoollist#show_section", as: :show_section
	get '/section/:id/student' => "schoollist#student", as: :student
	get '/student/:id' => "schoollist#show_student", as: :show_student
	get '/student/:id/exam' => "schoollist#exam", as: :exam

	# get '/school/attendance' => "schoollist#attendance"
	# get '/school/section_subject/:id' => "schoollist#show_section_subject", as: :section_subject
	# get '/school/show_attendance/:id' => "schoollist#show_attendance", as: :attendance
	# get '/school/results/:id' => "schoollist#show_result", as: :result
   	
   	# post '/students' => "student#create"
   	# get '/students' => "student#index"
   	# get '/students/:id' => "student#show"
   	# put '/students/:id' => "student#update"
   	# delete '/students/:id' => "student#destroy"



	get '/students' => "student#index"
	get '/students/:id' => "student#show"
	post '/students' => "student#create", as: :new_student
	get '/students/new' => "student#new"
	get '/students/:id/edit' => "student#edit", as: :edit_student
	post '/students/update' => "student#update"
	get '/students/delete/:id' => "student#delete", as: :destroy_student

	get '/showschools' => "school#index"
	get '/showschools/:id' => "school#show",as: :show
	get '/showschool' => "school#new",as: :new
	post '/schools' => "school#create"
	get '/showschools/:id/edit' => "school#edit",as: :edit
	put '/school/:id' => "school#update"
	patch '/school/:id' => "school#update"

	get '/showschool/delete/:id' =>'school#delete',as: :delete

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/students' => "school#index"
  # get '/student/:id' => "school#show", as: :school
  # # get '/student/:id/edit' => "school#edit" as: :edit_subject
  # # patch '/student/:id' => "student#update"
  # # get '/student/new' => "school#new", as: :new_school
  # # post 'students/create' => "school#index"

  # get '/subject/:id' =>"subject#show", as: :subject
  # get '/subject/:id/edit' => "subject#edit", as: :edit_subject
  # patch '/subject/:id' => 'subject#update'

  namespace :api do
  	get '/attendances' => "students#index"
  	get '/results' => "results#index"
end

resources :example
end
