class Bills::QrcodesController < ApplicationController

  def show
    @bill = Bill.find(params[:bill_id])
    authorize @bill

    options = {
        offset: 0,
        color: '000',
        shape_rendering: 'crispEdges',
        module_size: 6,
      }

    @text = "http://www.cashless-386.xyz#{new_bill_payment_path(@bill)}"
    # @text = new_bill_payment_path(@bill)
    @qrcode = RQRCode::QRCode.new(@text)
    @svg = @qrcode.as_svg(options)
  end
end
