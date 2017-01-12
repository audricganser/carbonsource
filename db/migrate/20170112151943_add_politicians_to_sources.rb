class AddPoliticiansToSources < ActiveRecord::Migration[5.0]
  def change
    add_column :sources, :politician_id, :integer
    add_index :sources, :politician_id
  end
end
