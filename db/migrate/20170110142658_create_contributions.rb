class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.string :amount
      t.datetime :created_at
    end
  end
end
