ActionController::Routing::Routes.draw do |map|
  map.resource :thing
  map.root :controller => "things", :action => "index"
end
