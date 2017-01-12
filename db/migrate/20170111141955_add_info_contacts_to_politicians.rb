class AddInfoContactsToPoliticians < ActiveRecord::Migration[5.0]
  def change
    add_column :politicians, :info_contact_id, :integer
    add_index :politicians, :info_contact_id
  end
end
