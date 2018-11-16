Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "yogaflows#index"
  # Routes for the Friend resource:

  # CREATE
  get("/friends/new", { :controller => "friends", :action => "new_form" })
  post("/create_friend", { :controller => "friends", :action => "create_row" })

  # READ
  get("/friends", { :controller => "friends", :action => "index" })
  get("/friends/:id_to_display", { :controller => "friends", :action => "show" })

  # UPDATE
  get("/friends/:prefill_with_id/edit", { :controller => "friends", :action => "edit_form" })
  post("/update_friend/:id_to_modify", { :controller => "friends", :action => "update_row" })

  # DELETE
  get("/delete_friend/:id_to_remove", { :controller => "friends", :action => "destroy_row" })

  #------------------------------

  # Routes for the Favorite resource:

  # CREATE
  get("/favorites/new", { :controller => "favorites", :action => "new_form" })
  post("/create_favorite", { :controller => "favorites", :action => "create_row" })

  # READ
  get("/favorites", { :controller => "favorites", :action => "index" })
  get("/favorites/:id_to_display", { :controller => "favorites", :action => "show" })

  # UPDATE
  get("/favorites/:prefill_with_id/edit", { :controller => "favorites", :action => "edit_form" })
  post("/update_favorite/:id_to_modify", { :controller => "favorites", :action => "update_row" })

  # DELETE
  get("/delete_favorite/:id_to_remove", { :controller => "favorites", :action => "destroy_row" })

  #------------------------------

  # Routes for the Pose resource:

  # CREATE
  get("/poses/new", { :controller => "poses", :action => "new_form" })
  post("/create_pose", { :controller => "poses", :action => "create_row" })

  # READ
  get("/poses", { :controller => "poses", :action => "index" })
  get("/poses/:id_to_display", { :controller => "poses", :action => "show" })

  # UPDATE
  get("/poses/:prefill_with_id/edit", { :controller => "poses", :action => "edit_form" })
  post("/update_pose/:id_to_modify", { :controller => "poses", :action => "update_row" })

  # DELETE
  get("/delete_pose/:id_to_remove", { :controller => "poses", :action => "destroy_row" })

  #------------------------------

  # Routes for the Yogaflow resource:

  # CREATE
  get("/yogaflows/new", { :controller => "yogaflows", :action => "new_form" })
  post("/create_yogaflow", { :controller => "yogaflows", :action => "create_row" })

  # READ
  get("/yogaflows", { :controller => "yogaflows", :action => "index" })
  get("/yogaflows/:id_to_display", { :controller => "yogaflows", :action => "show" })

  # UPDATE
  get("/yogaflows/:prefill_with_id/edit", { :controller => "yogaflows", :action => "edit_form" })
  post("/update_yogaflow/:id_to_modify", { :controller => "yogaflows", :action => "update_row" })

  # DELETE
  get("/delete_yogaflow/:id_to_remove", { :controller => "yogaflows", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
