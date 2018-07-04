class HomeController < ApplicationController
  def index
    tag = params[:tag]
    all_arts = Art.where(hidden: false).order(position: :asc)
    if (!tag.blank?)
      @arts = all_arts.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 9)
    else
      @arts = all_arts.paginate(:page => params[:page], :per_page => 9)
    end
  end
end
