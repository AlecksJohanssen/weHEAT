class HomeController < ApplicationController
  helper_method :resource_name, :resource, :devise_mapping

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
  def index
  	@events = Event.all
  end
end
