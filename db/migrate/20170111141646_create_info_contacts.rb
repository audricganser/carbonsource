class CreateInfoContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :info_contacts do |t|
      t.string :email
      t.string :address
      t.string :phone
      t.string :website
      
    end
  end
end
