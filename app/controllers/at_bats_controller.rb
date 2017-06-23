class AtBatsController < ApplicationController
  def index
#	@at_bats = AtBat.where(current_pitcher: "nolaa001", scorecard: "K").paginate(:page => params[:page], :per_page => 30)

	team_code = "ANA"
	team_code = params[:team_code]
	@at_bats = AtBat.where("info.hometeam" => team_code).order_by(:at_bat_id.asc)
	
	# @at_bats = AtBat.order_by(:at_bat_id.asc)

  end
end
