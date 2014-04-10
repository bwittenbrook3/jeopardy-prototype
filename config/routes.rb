JeopardyPrototype::Application.routes.draw do

	namespace :api, defaults: { format: 'json' } do
		resources :games
	end

	resources :games do 
		get "add_score", on: :member
	end
	root to: "games#index"
end
