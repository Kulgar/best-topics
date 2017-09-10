Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "about" => "pages#about"
  get "contact" => "pages#contact"
  get "profile" => "users#profile"

  post "users" => "users#create"

  # Topics
  resources :topics do
    collection do
      get 'published'
    end
  end

  resources :topic_answers, except: [:index]
end

=begin
    topics POST   /topics(.:format)          topics#create
 new_topic GET    /topics/new(.:format)      topics#new
edit_topic GET    /topics/:id/edit(.:format) topics#edit
     topic GET    /topics/:id(.:format)      topics#show
           PATCH  /topics/:id(.:format)      topics#update
           PUT    /topics/:id(.:format)      topics#update
           DELETE /topics/:id(.:format)      topics#destroy
=end
