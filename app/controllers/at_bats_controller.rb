class AtBatsController < ApplicationController
  def index
#	@at_bats = AtBat.where(current_pitcher: "nolaa001", scorecard: "K").paginate(:page => params[:page], :per_page => 30)
	@at_bats = AtBat.order_by(:at_bat_id.asc)

  end
end
