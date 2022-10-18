Rails.application.routes.draw do
  get 'about/index'
  root 'overwatch_hero#index'
  resources :overwatch_character, only: %i[index show] do
    collection do
        get "search"
    end
  end
  get "/classes", to: "overwatch_hero#index", as: "overwatch_heroes"
  get "/show/:id", to: "overwatch_hero#show", as: "overwatch_characters"
  get "/search", to: "overwatch_hero#search"
end
