class AddInfoContactsToPoliticians < ActiveRecord::Migration[5.0]
  def change
    add_column :politicians, :contact_id, :integer
    add_index :politicians, :contact_id
  end
end
