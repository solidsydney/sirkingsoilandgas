class CreateJobsCareers < ActiveRecord::Migration
  def change
    create_table :jobs_careers do |t|
      t.string :surname
      t.string :middle_name
      t.string :first_name
      t.string :prefix
      t.string :position_applied_for
      t.string :email
      t.string :country
      t.date :date_of_birth
      t.string :sex
      t.string :qulification
      t.string :state
      t.string :contact_address
      t.text :self_description
      t.string :proposed_pay
      t.string :portfolio_function

      t.timestamps
    end
  end
end
