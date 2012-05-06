IfundartsPh::Application.routes.draw do
  root :to => 'ifund#index', :as => 'home'
  match 'about', :to => 'ifund#about', :as => 'about'
  match 'explore(/:category)', :to => 'ifund#explore', :as => 'explore'
  match 'create', :to => 'ifund#create', :as => 'create'
  match 'terms', :to => 'ifund#terms', :as => 'terms'
  match 'login', :to => 'ifund#login', :as => 'login'
  match 'creator', :to => 'ifund#creator', :as => 'creator', :via => :post
end
