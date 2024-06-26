# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users

  resources :quotes do
    resources :line_item_dates, except: %w[index show]
  end
end
