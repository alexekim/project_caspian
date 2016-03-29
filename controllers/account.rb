class AccountController < ApplicationController

  get '/'

  end

  post '/register'
    "do something"
    redirect '/personal'
  end

  post '/login'
    erb :profile
  end


end
