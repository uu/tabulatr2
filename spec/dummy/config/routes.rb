Rails.application.routes.draw do
  resources :products, only: [:index, :show] do
    collection do
      get :simple_index
      get :one_item_per_page_with_pagination
      get :one_item_per_page_without_pagination
      get :count_tags
      get :stupid_array
      get :with_batch_actions
      get :implicit_columns
      get :with_styling
    end
  end

  resources :vendors, only: [:index]
end
