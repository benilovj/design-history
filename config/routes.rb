Rails.application.routes.draw do
  root to: redirect("/projects")

  devise_for :users

  resources :projects do
    resources :posts
  end

  scope via: :all do
    get "/404", to: "errors#not_found"
    get "/422", to: "errors#unprocessable_entity"
    get "/429", to: "errors#too_many_requests"
    get "/500", to: "errors#internal_server_error"
  end
end
