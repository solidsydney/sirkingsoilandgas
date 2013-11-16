ActiveAdmin.register JobsCareer do

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Jobs/Career", :multipart => true do
      f.input :surname
      f.input :middle_name
      f.input :first_name
      f.input :prefix
      f.input :position_applied_for
      f.input :email
      f.input :country, :as => :string
      f.input :date_of_birth, :as => :datepicker
      f.input :sex
      f.input :qulification
      f.input :state
      f.input :contact_address
      f.input :self_description
      f.input :proposed_pay
      f.input :portfolio_function
      f.input :cv, :as => :file
      f.input :plan, :as => :file
    end
    f.actions
  end
  controller do
    def permitted_params
      params.permit jobs_career: [:surname, :middle_name, :first_name, :prefix, :position_applied_for, :email, :country, :date_of_birth, :sex, :qulification, :state, :contact_address, :self_description, :proposed_pay, :portfolio_function, :cv, :plan  ]
    end
  end
  
end
