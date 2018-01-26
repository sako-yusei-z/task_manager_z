Rails.application.routes.draw do
  root 'pages#index'

  get 'pages/index'
  get 'pages/show'

  devise_for :users, :path => "auth", controllers: {
      # Extends Devise registrations
      sessions: "devise/sessions",
      registrations: "devise/registrations",
      confirmations: "devise/confirmations",
      omniauth_callbacks: "users/omniauth_callbacks"
  }
end
