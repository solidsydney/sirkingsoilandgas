class JobsCareer < ActiveRecord::Base
  has_attached_file :cv, styles: {thumbnail: "60x60#"}
  validates_attachment :cv, :attachment_presence => true, :message => 'only (pdf) documents should be uploaded', content_type: { content_type: "application/pdf" }
  has_attached_file :plan, styles: {thumbnail: "60x60#"}
  validates_attachment :plan, :attachment_presence => true, :message => 'only (pdf) documents should be uploaded', content_type: { content_type: "application/pdf" }

  validates_presence_of :surname, :middle_name, :first_name, :prefix, :position_applied_for, :email, :country, :date_of_birth, :sex, :qulification, :state, :contact_address, :self_description, :proposed_pay, :portfolio_function

end
