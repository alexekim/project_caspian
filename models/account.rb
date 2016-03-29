class Account < ActiveRecord::Base

  #password setter/mutator
  # def password = (users_password)
  #   self.password_hash = BCrypt::Password.create(users_password)
  # end
  #
  # def has_valid_password(user_id, attempted_password)
  #   @current_user = Account.find(user_id)
  #   comparison = BCrypt::Password.new(attempted_password)
  #   if (@current_user[:password_hash].to_s) == comparison.to_s)
  #     return true
  #   else
  #     return false
  #   end
  # end

  #password getter

end
