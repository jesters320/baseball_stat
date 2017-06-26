class AtBatsController < ApplicationController
  def index
#	@at_bats = AtBat.where(current_pitcher: "nolaa001", scorecard: "K").paginate(:page => params[:page], :per_page => 30)

	@team_code = "ANA"
	@team_code = params[:team_code]
	
	@at_bats = AtBat.or({"info.hometeam" => @team_code}, {"info.visteam" => @team_code}).order_by(:at_bat_id.asc)
	@teams = Team.all.order_by(:code.asc)
	# @at_bats = AtBat.order_by(:at_bat_id.asc)

  end
  
end
