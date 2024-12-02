class RenameTotalAmountToTotalBillInTipCalculations < ActiveRecord::Migration[8.0]
  def change
    rename_column :tip_calculations, :total_amount, :total_bill
  end
end
