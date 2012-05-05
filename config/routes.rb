IfundartsPh::Application.routes.draw do
  root :to => 'ifund#index', :as => 'home'
  match 'about', :to => 'ifund#about', :as => 'about'
  match 'explore', :to => 'ifund#explore', :as => 'explore'
  match 'create', :to => 'ifund#create', :as => 'create'
  match 'creator', :to => 'ifund#creator', :as => 'creator'
end
