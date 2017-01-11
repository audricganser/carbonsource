class AddOrganisationsToSources < ActiveRecord::Migration[5.0]
  def change
    add_column :sources, :organisation_id, :integer
    add_index :sources, :organisation_id
  end
end
