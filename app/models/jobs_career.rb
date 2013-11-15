class JobsCareer < ActiveRecord::Base
  has_attached_file :cv, styles: {thumbnail: "60x60#"}
  validates_attachment :cv, content_type: { content_type: "application/pdf" }
  has_attached_file :plan, styles: {thumbnail: "60x60#"}
  validates_attachment :plan, content_type: { content_type: "application/pdf" }
end
