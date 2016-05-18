class HomeController < ApplicationController
  def index
    @arts = Art.paginate(:page => params[:page], :per_page => 9)
  end
end
