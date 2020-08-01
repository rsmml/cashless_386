class PaymentsController < ApplicationController
  def new
    @bill = current_user.bills.where(status: 'pending').find(params[:bill_id])
    authorize @bill
  end
end
