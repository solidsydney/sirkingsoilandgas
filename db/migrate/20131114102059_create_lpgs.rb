class CreateLpgs < ActiveRecord::Migration
  def change
    create_table :lpgs do |t|
      t.string :full_name
      t.string :email
      t.string :username
      t.string :state
      t.string :city
      t.string :lga
      t.text :description

      t.timestamps
    end
  end
end
