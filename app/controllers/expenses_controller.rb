class ExpensesController < ApplicationController
  respond_to :json, only: [:create]

  before_action :find_wedding, only: [:create]

  def create
    new_expense = @wedding.expenses.create! expense_params
    respond_with new_expense, location: wedding_expense_path(@wedding, new_expense)
  end

  private

  def find_wedding
    @wedding = Wedding.find params[:wedding_id]
  end

  def expense_params
    params.require(:expense).permit(:title, :description, :expected_amount, :payable_by_id)
  end
end
