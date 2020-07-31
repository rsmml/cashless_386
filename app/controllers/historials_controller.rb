class HistorialsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @historials = Historial.all
  end
end
