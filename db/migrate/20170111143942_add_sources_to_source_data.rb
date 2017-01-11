class AddSourcesToSourceData < ActiveRecord::Migration[5.0]
  def change
    add_column :source_data, :source_id, :integer
    add_index :source_data, :source_id  
  end
end
