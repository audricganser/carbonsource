class CreateSources < ActiveRecord::Migration[5.0]
  def change
    create_table :sources do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :remark
    end
  end
end
