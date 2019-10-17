Rails.application.routes.draw do


  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  devise_for :admins
  root  to: 'static_pages#home'
  get 'static_pages/about', to: 'static_pages#about', as: 'about'
  get 'static_pages/where', to: 'static_pages#where', as: 'where'
  get 'static_pages/legal', to: 'static_pages#legal', as: 'legal'
  get 'static_pages/contact', to: 'static_pages#contact', as: 'contact'
  resources :projects
  get 'projects/:id/edit_images', to: 'projects#edit_project_images', as: 'edit_project_images'
  delete 'projects/:id/images/:image_id', to: 'projects#delete_project_image', as: 'delete_project_image'
  post 'projects/:id', to: 'projects#add_images', as: 'project_images'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
