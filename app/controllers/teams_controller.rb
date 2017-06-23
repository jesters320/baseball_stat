class TeamsController < ApplicationController
  def index
#	@at_bats = AtBat.where(current_pitcher: "nolaa001", scorecard: "K").paginate(:page => params[:page], :per_page => 30)
	@teams = Team.order_by(:league.asc)

  end
end
