class AddAttachmentBigImgOneToProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :products do |t|
      t.attachment :big_img_one
    end
  end

  def self.down
    remove_attachment :products, :big_img_one
  end
end
