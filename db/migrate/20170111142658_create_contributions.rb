class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.string :amount
      t.string :date
    end
  end
end
