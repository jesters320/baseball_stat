class AtBatsController < ApplicationController
  def index
#	@at_bats = AtBat.where(current_pitcher: "nolaa001", scorecard: "K").paginate(:page => params[:page], :per_page => 30)

	@team_code = "ANA"
	@team_code = params[:team_code]
	
	@at_bats = AtBat.where("info.hometeam" => @team_code).order_by(:at_bat_id.asc).limit(11)
	
	logger.warn "==========index>>@at_bats==========" 
	logger.warn @at_bats.to_json
	logger.warn "==========index>>@at_bats==========" 
	
	@teams = Team.all.order_by(:code.asc)
	# @at_bats = AtBat.order_by(:at_bat_id.asc)

  end
  
  def data_table
	@team_code = "PHI"
	# @team_code = params[:team_code]
	
	@echo = params[:sEcho]
	logger.warn "==========Echo==========" 
	logger.warn @echo
	logger.warn "==========Echo=========="
	
	@at_bat_count = AtBat.where("info.hometeam" => @team_code).count
	
	@at_bat_filtered_count = AtBat.where("info.hometeam" => @team_code).count
	
	@aaData = AtBat.where("info.hometeam" => @team_code).limit(10).pluck(:game_id, :at_bat_id, :inning, :player_id, :balls_and_strikes, :balls, :strikes, :current_pitch_call, :scorecard, :hit_location, :current_pitcher)
	
	logger.warn "==========data_table>>@aaData==========" 
	#logger.warn JSON.parse(@aaData[0].to_json(except: :_id)).fetch("balls")
	logger.warn @aaData.to_s
	logger.warn "==========data_table>>@aaData===========" 
	
	data_table_object = {iTotalRecords: @at_bat_count, iTotalDisplayRecords: @at_bat_filtered_count, sEcho: @echo, aaData: @aaData}
	
    render json: data_table_object
  end
  
end
