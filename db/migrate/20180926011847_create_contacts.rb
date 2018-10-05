class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.boolean :newsletter
      
      t.timestamps null: false
    end
  end
end
