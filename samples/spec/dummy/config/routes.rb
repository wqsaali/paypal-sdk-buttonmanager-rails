Dummy::Application.routes.draw do

  mount ButtonManagerSamples::Engine => "/samples", :as => :button_manager_samples
  root :to => redirect("/samples")

end
