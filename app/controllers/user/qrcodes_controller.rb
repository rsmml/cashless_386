class User::QrcodesController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    authorize @user

    options = {
        offset: 0,
        color: '000',
        shape_rendering: 'crispEdges',
        module_size: 6
      }

    @text = bill_path(@bill)
    @qrcode = RQRCode::QRCode.new(@text)
    @svg = @qrcode.as_svg(options)
  end
end
