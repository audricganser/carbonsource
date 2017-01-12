class CreateCarbonEmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :carbon_emissions do |t|
      t.string :measurement_date
      t.string :amount
      t.string :url
    end
  end
end
