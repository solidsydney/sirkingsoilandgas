class New < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => '300x300>', :thumb => '100x100#'}
  paginates_per 4
end
