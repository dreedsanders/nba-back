class Api::V1::GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]

  # GET /games or /games.json
  def index
    @games = Game.all
    render json: @games
  end

  # GET /games/1 or /games/1.json
  def show
   game = Game.find(params[:id])
    render json: game
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
   game = Game.find(params[:id])
   game.update(home_team: params[:home_team], away_team: params[:away_team], final_score: params[:final_score] )
    render json:game
  end

  # DELETE /games/1 or /games/1.json
  def destroy
   game =Game.find(params[:id])
   game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.fetch(:game, {})
    end
end
