class AddAttachmentPhotoToNews < ActiveRecord::Migration
  def self.up
    change_table :news do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :news, :photo
  end
end
