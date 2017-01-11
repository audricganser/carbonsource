class CreateInfoContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :info_contacts do |t|
      t.string :email
      t.string :address
      t.string :phone
      t.string :website
      t.string :postal_code
      t.string :city
      t.string :region1
      t.string :region2
      t.string :region3
      t.string :state
      t.string :country
    end
  end
end
