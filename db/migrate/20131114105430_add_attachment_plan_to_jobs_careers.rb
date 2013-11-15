class AddAttachmentPlanToJobsCareers < ActiveRecord::Migration
  def self.up
    change_table :jobs_careers do |t|
      t.attachment :plan
    end
  end

  def self.down
    drop_attached_file :jobs_careers, :plan
  end
end
