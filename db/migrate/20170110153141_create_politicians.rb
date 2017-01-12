class CreatePoliticians < ActiveRecord::Migration[5.0]
  def change
    create_table :politicians do |t|
      t.string :position
      t.string :name_first
      t.string :name_last
    end
  end
end
