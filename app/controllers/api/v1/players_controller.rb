class Api::V1::PlayersController < ApplicationController
  before_action :set_player, only: %i[ show edit update destroy ]

  # GET /players or /players.json
  def index
    @players = Player.all
    render json: @players
  end

  # GET /players/1 or /players/1.json
  def show
    player = Player.find(params[:id])
    render json: player
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # POST /players or /players.json
  def create
    @player = Player.new(player_params)
  end

  # PATCH/PUT /players/1 or /players/1.json
  def update
    player = Player.find(params[:id])
    # player.update(:name params[:name],:team params[:team], :number params[:number], :position params[:position])
  end

  # DELETE /players/1 or /players/1.json
  def destroy
    player = Player.find(params[:id])
    player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_params
      params.fetch(:player, {})
    end
end
