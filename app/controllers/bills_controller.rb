class BillsController < ApplicationController
  def new
    @bill = Bill.new
    @employees = Employee.all
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to bills_path, notice: 'Bill was successfully created.'
    else
      @employees = Employee.all
      render :new
    end
  end

  def index
    @bills = Bill.includes(:employee)
  end

  private

  def bill_params
    params.require(:bill).permit(:amount, :bill_type, :employee_id)
  end
end
