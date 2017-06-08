class StatsController < ApplicationController
  def index
	@stats = Stat.paginate(:page => params[:page], :per_page => 30)
  end
end
