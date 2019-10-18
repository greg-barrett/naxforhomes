Rails.application.routes.draw do


  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  devise_for :admins
  root  to: 'static_pages#home'
  get 'static_pages/about', to: 'static_pages#about', as: 'about'
  get 'static_pages/where', to: 'static_pages#where', as: 'where'
  get 'static_pages/legal', to: 'static_pages#legal', as: 'legal'
  get 'static_pages/contact', to: 'static_pages#contact', as: 'contact'
  resources :projects
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
