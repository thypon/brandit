Brandit::Application.routes.draw do
  root :to => 'homepage#show'

  resource :homepage, :controller => :homepage

  resource :where_we_are, :controller => :where_we_are

  resource :company, :controller => :company do
    member do
      get 'show_more'
    end
  end

  resource :contacts

  resources :events do
    member do
      get 'up'
      get 'next'
      get 'previous'
    end
  end

  resources :service_point_cities do
    resources :service_points do
      member do
        get 'up'
      end
      collection do
        get 'up'
      end
    end
  end

  resources :shop_cities do
    resources :shops do
      member do
        get 'up'
      end
      collection do
        get 'up'
      end
    end
    resources :products
  end

  resources :services do
    resources :designers do
      member do
        get 'up'
        get 'next'
        get 'previous'
      end
      collection do
        get 'up'
      end
    end
    resources :service_points do
      member do
        get 'up'
      end
      collection do
        get 'up'
      end
    end
    resources :products

    member do
      get 'up'
      get 'next'
      get 'previous'
    end
    collection do
      get 'up'
    end
  end

  resources :designers do
    resources :products
    resources :services do
      member do
        get 'up'
        get 'next'
        get 'previous'
      end
      collection do
        get 'up'
      end
    end

    member do
      get 'up'
      get 'next'
      get 'previous'
    end
    collection do
      get 'up'
    end
  end

  resources :product_types do
    resources :products
  end

  resources :product_styles do
    resources :products
  end

  resources :products do
    resources :designers  do
      member do
        get 'up'
        get 'next'
        get 'previous'
      end
      collection do
        get 'up'
      end
    end
    resources :shops
    resources :services do
      member do
        get 'up'
        get 'next'
        get 'previous'
      end
      collection do
        get 'up'
      end
    end
    resources :showrooms do
      member do
        get 'up'
        get 'gallery'
      end
    end

    member do
      get 'up'
      get 'next'
      get 'previous'
      get 'gallery'
    end
  end

  resources :shops do
    resources :products

    member do
      get 'up'
    end
    collection do
      get 'up'
    end
  end

  resources :showrooms do
    resources :products

    member do
      get 'up'
      get 'gallery'
    end
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
