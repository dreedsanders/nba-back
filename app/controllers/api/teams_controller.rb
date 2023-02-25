class Api::V1::TeamsController < ApplicationController
  before_action :set_team, only: %i[ show edit update destroy ]

  # GET /teams or /teams.json
  def index
    @teams = Team.all
    render json: @teams
  end

  # GET /teams/1 or /teams/1.json
  def show
    team = Team.find(params[:id])
    render json: team
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # POST /teams or /teams.json
  def create
    @team = Team.create(team_params)
    render json: @team
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update
    team = Team.find(params[:id])
    team.update(:name params[:name], :conference params[:conference], :division params[:division])
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    team = Team.find(params[:id])
    team.destroy
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.fetch(:team, {})
    end
end
