ActionController::Routing::Routes.draw do |map|
  
  map.index '',  :controller => "products", :action => "index"
  map.search 'search', :controller => "groups", :action => "search"
  map.product 'product/:id', :controller => "products", :action => "details"
  
end
