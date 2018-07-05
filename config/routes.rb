Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: 'principal#index'
  end
end
