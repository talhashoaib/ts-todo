Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: 'api' do
    namespace :v1 do
      resources :todos do
			  collection do
			    match "video_uploaded" => 'todos#video_uploaded', :via => [:get, :post]
        end
      end
    end
  end
end