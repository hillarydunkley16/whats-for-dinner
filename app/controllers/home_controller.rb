class HomeController < ApplicationController
  def index
    @data = Datum.all
  end
  def show
    @data = Datum.find(params[:id])
  end
end
