class AddAttachmentBigimagetwoToProducts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :products do |t|
      t.attachment :bigImageTwo
    end
  end

  def self.down
    remove_attachment :products, :bigImageTwo
  end
end
