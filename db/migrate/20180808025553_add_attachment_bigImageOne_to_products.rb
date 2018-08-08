class AddAttachmentBigimageoneToProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :products do |t|
      t.attachment :bigImageOne
    end
  end

  def self.down
    remove_attachment :products, :bigImageOne
  end
end
