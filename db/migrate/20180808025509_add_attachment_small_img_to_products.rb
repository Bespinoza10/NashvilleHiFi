class AddAttachmentSmallImgToProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :products do |t|
      t.attachment :small_img
    end
  end

  def self.down
    remove_attachment :products, :small_img
  end
end
