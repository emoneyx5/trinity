class SessionsController < ApplicationController
  def create
    render :text => "<pre>" + env["omniauth.auth"].to_yaml and return
    auth = request.env["omniauth.auth"]

    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
   	session[:user_id] = user.id
    redirect_to '/'
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => "Signed out!"
	end

end

def create
  auth = request.env['omniauth.auth']

  @authorization = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
  if @authorization
    render :text => "Welcome back #{@authorization.user.name}! You have already signed up."
  else
    user = User.new :name => auth_hash["user_info"]["name"], :email => auth_hash["user_info"]["email"]
    user.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
    user.save

    render :text => "Hi #{user.name}! You've signed up."
  end
end
