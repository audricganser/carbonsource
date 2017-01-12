class AddOrganisationsToContributions < ActiveRecord::Migration[5.0]
  def change
    add_column :contributions, :organisation_id, :integer
    add_index :contributions, :organisation_id
  end
end
