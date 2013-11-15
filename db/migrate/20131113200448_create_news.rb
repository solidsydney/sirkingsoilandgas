class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :news_content
      t.string :external_link

      t.timestamps
    end
  end
end
