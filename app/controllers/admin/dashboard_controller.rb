class Admin::DashboardController < ApplicationController
  before_action :authenticate_admin!

  def index
    #@tip_calculations = TipCalculation.order(created_at: :asc)
    #@tip_calculations = TipCalculation.page(params[:page]).per(10)
    @tip_calculations = TipCalculation.order(created_at: :desc).page(params[:page]).per(10)
  end
end
