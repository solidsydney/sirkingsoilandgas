class Lpg < ActiveRecord::Base
  validates_presence_of :full_name, :email, :username, :state, :city, :lga
end
