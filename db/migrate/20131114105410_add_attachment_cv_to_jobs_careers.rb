class AddAttachmentCvToJobsCareers < ActiveRecord::Migration
  def self.up
    change_table :jobs_careers do |t|
      t.attachment :cv
    end
  end

  def self.down
    drop_attached_file :jobs_careers, :cv
  end
end
