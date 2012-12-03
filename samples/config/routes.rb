ButtonManagerSamples::Engine.routes.draw do
  match "button_manager(/:action)",  :controller => "button_manager", :as => :button_manager
  root :to => "button_manager#index"
end
