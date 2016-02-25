class BitbucketsController < ApplicationController
  
  def index
    @repos = set_bitbucket(current_user).repos
  end
  
  def show
  end
  
  def create 
  end

  private
  def set_bitbucket(user)
    bitbucket = BitBucket.new do |config|
  	  config.oauth_token   = user.oauth_token
  	  config.oauth_secret  = user.oauth_secret
  	  config.client_id     = 'v8qN5CYJcT4DHDeP8F'
  	  config.client_secret = 'dGFNhMzD6hNDV65h3sHBcmrpJFXHpUAZ'
  	  config.adapter       = :net_http
  	end
  end
end
