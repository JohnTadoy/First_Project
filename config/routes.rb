Rails.application.routes.draw do
  get 'about/index'
  root 'overwatch_class#index'
  get "/classes", to: "overwatch_class#index", as: "overwatch_classes"
  get "/show/:id", to: "overwatch_class#show", as: "overwatch_characters"
end
