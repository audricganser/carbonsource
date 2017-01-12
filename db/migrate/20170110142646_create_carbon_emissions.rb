class CreateCarbonEmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :carbon_emissions do |t|
      t.datetime :measurement_date
      t.integer :amount
      t.string :url
    end
  end
end
