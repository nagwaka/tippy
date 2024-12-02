class TipCalculatorController < ApplicationController
  def index
    @bill_amount = params[:bill_amount].to_f
    @tip_percentage = params[:tip_percentage].to_f
    @number_of_people = params[:number_of_people].to_i

    if @bill_amount.positive? && @number_of_people.positive?
      @tip_amount = (@bill_amount * @tip_percentage / 100).round(2)
      @total_bill = (@bill_amount + @tip_amount).round(2)
      @per_person_amount = (@total_bill / @number_of_people).round(2)

      # Save the calculation to the database
      TipCalculation.create(
        bill_amount: @bill_amount,
        tip_percentage: @tip_percentage,
        tip_amount: @tip_amount,
        total_bill: @total_bill,
        number_of_people: @number_of_people,
        per_person_amount: @per_person_amount
      )
    else
      @tip_amount = 0
      @total_bill = 0
      @per_person_amount = 0
    end
  end
end
