class Account < ActiveRecord::Base
  has_many :personals
  has_many :medicals
  has_many :contacts
  has_many :camp_locations

end
