class AddAttachmentSmallimageToProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :products do |t|
      t.attachment :smallImage
    end
  end

  def self.down
    remove_attachment :products, :smallImage
  end
end
