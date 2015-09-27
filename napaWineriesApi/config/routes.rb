Rails.application.routes.draw do
  resources :wineries, except: [:new, :edit]
    scope :api do
      scope :v1 do
        resources :wineries, except: [:new, :edit]
      end
    end
end
