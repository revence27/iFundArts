IfundartsPh::Application.routes.draw do
  root :to => 'ifund#index', :as => 'home'
  match 'about', :to => 'ifund#about', :as => 'about'
  match 'explore(/:category)', :to => 'ifund#explore', :as => 'explore'
  match 'create', :to => 'ifund#create', :as => 'create'
  match 'terms', :to => 'ifund#terms', :as => 'terms'
  match 'login', :to => 'ifund#login', :as => 'login'
  match 'admin', :to => 'ifund#admin', :as => 'admin'
  match 'admin_settings', :to => 'ifund#admin_settings', :as => 'admin_settings', :via => 'post'
  match 'admin_login', :to => 'ifund#admin_login', :as => 'admin_login'
  match 'admin_auth',  :to => 'ifund#admin_auth',  :as => 'admin_auth', :via => :post
  match 'creator', :to => 'ifund#creator', :as => 'creator', :via => :post

  match 'project/:id', :to => 'ifund#project', :as => 'project'
  match 'support/:id', :to => 'ifund#support', :as => 'support', :via => :post
end
