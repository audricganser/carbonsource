class AddPoliticiansToContributions < ActiveRecord::Migration[5.0]
  def change
    add_column :contributions, :politician_id, :integer
    add_index :contributions, :politician_id
  end
end
