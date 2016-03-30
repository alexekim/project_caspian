class Account < ActiveRecord::Base
  has_one :personal
  has_one :medical
  has_one :contact
  has_one :camp_location
end
