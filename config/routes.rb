Rails.application.routes.draw do
  get 'about/index'
  root 'overwatch_class#index'
  get "/classes", to: "overwatch_class#index", as: "overwatch_classes"
end
