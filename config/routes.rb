Rails.application.routes.draw do
	get 'todolists/new'
	get "top" => "homes#top"
	post "todolists" => "todolists#create"
	get "todolists" => "todolists#index"
	get "todolists/:id" => "todolists#show", as: "todolist"
	get "todolists/:id/edit" => "todolists#edit", as: "edit-todolist"
	patch "todolists/:id" => "todolists#update", as: "update-todolist"
	delete "todolists/:id" => "todolists#destroy", as: "destroy_todolist"
end
