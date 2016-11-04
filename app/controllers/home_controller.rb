class HomeController < ApplicationController
  def index
    tag = params[:tag]
    if (!tag.blank?)
      @arts = Art.order(position: :asc).tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 9)
    else
      @arts = Art.order(position: :asc).paginate(:page => params[:page], :per_page => 9)
    end
  end
end
