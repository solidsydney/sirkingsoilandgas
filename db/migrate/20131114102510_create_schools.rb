class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :state
      t.string :lga
      t.string :project_title
      t.text :project_description

      t.timestamps
    end
  end
end
