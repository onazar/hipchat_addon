HipchatAddon::Application.routes.draw do

get '/hipchat/get_updates/:search_id', :controller => 'hipchat', :action => 'get_updates'
get '/config/remove', :controller => 'config', :action => 'remove'
resources :config, :collection => { :get_hipchat_rooms => :get, :verify_freshdesk_apikey => :get, :store => :post, :remove => :delete}
resources :hipchat, :collection => { :get_updates => :get }
end
