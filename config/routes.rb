Rails.application.routes.draw do
  devise_for :users

  authenticated(:user) do
    root "pages#index", as: :authenticated_root
  end

  unauthenticated(:user) do
    root "pages#landing_page"
  end
end
