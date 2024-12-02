class RenameAmountPerPersonToPerPersonAmountInTipCalculations < ActiveRecord::Migration[8.0]
  def change
    rename_column :tip_calculations, :amount_per_person, :per_person_amount
  end
end
