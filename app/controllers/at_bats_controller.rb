class AtBatsController < ApplicationController
  def index
	@at_bats = AtBat.paginate(:page => params[:page], :per_page => 30)
  end
end
