class AddInfoContactsToOrganisations < ActiveRecord::Migration[5.0]
  def change
    add_column :organisations, :info_contact_id, :integer
    add_index :organisations, :info_contact_id
  end
end
