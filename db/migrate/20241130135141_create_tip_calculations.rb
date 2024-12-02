class CreateTipCalculations < ActiveRecord::Migration[8.0]
  def change
    create_table :tip_calculations do |t|
      t.decimal :bill_amount
      t.decimal :tip_percentage
      t.decimal :tip_amount
      t.decimal :total_amount
      t.integer :number_of_people
      t.decimal :amount_per_person

      t.timestamps
    end
  end
end
