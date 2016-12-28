class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	devise :database_authenticatable, 
  			 :registerable,
         :recoverable,
         :confirmable,
         :rememberable,
         :trackable,
         :validatable, 
         :omniauthable, :omniauth_providers => [:facebook, :google_oauth2],
         
         :authentication_keys => {email: true, login: false}
end
