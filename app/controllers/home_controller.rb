class HomeController < ApplicationController
  def index
    tag = params[:tag]
    if (!tag.blank?)
      @arts = Art.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 9)
    else
      @arts = Art.paginate(:page => params[:page], :per_page => 9)
    end
  end
end
