Brandit::Application.routes.draw do

  resources :best_events do
    member do
      get 'up'
      get 'next'
      get 'previous'
    end
  end

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
    resources :products do
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

  resources :designers do
    resources :products do
      member do
        get 'up'
        get 'next'
        get 'previous'
      end
      collection do
        get 'up'
      end
    end
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
    resources :products do
      member do
        get 'up'
        get 'next'
        get 'previous'
      end
      collection do
        get 'up'
      end
    end
  end

  resources :product_styles do
    resources :products do
      member do
        get 'up'
        get 'next'
        get 'previous'
      end
      collection do
        get 'up'
      end
    end
  end

  resources :products do
    resources :product_gallery_photos

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
    resources :shops do
      member do
        get 'up'
      end
      collection do
        get 'up'
      end
    end
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

  resources :shops do
    resources :products do
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
    end
    collection do
      get 'up'
    end
  end

  resources :showrooms do
    resources :products do
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
    end
  end

  resources :service_points do
    resources :services do
      member do
        get 'up'
      end
    end
  end

  root :to => 'homepage#show'
end
