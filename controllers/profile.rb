class ProfileController < ApplicationController
  get '/' do
      erb :profile, locals: {title: 'User Profile'}
  end
end
