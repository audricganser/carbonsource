class AddPoliticiansToSourceData < ActiveRecord::Migration[5.0]
  def change
    add_column :source_data, :politician_id, :integer
    add_index :source_data, :politician_id
  end
end
