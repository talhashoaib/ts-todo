Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'api' do
    namespace :v1 do
      resources :todos do
			  collection do
			    get 'video_uploaded'
        end
      end
    end
  end
end
