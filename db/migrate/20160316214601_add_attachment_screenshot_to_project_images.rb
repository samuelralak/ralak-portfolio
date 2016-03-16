class AddAttachmentScreenshotToProjectImages < ActiveRecord::Migration
  def self.up
    change_table :project_images do |t|
      t.attachment :screenshot
    end
  end

  def self.down
    remove_attachment :project_images, :screenshot
  end
end
