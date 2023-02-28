class Api::V1::PlayoffBracketsController < ApplicationController
  before_action :set_playoff_bracket, only: %i[ show edit update destroy ]

  # GET /playoff_brackets or /playoff_brackets.json
  def index
    @playoff_brackets = PlayoffBracket.all
    render json: @playoff_brackets
  end

  # GET /playoff_brackets/1 or /playoff_brackets/1.json
  def show
    playoff_bracket = PlayoffBracket.find(params[:id])
    render json: playoff_bracket
  end

  # GET /playoff_brackets/new
  def new
    @playoff_bracket = PlayoffBracket.new
  end

  # POST /playoff_brackts or /playoff_brackts.json
  def create
    @playoff_bracket = PlayoffBracket.new(playoff_bracket_params)
  end

  # PATCH/PUT /playoff_brackts/1 or /playoff_brackts/1.json
  def update
    playoff_bracket = PlayoffBracket.find(params[:id])
    # playoff_bracket.update(:user_id params[:user_id], :teams params[:teams])
  end

  # DELETE /playoff_brackts/1 or /playoff_brackts/1.json
  def destroy
    playoff_bracket = PlayoffBracket.find(params[:id])
    player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playoff_bracket
      @playoff_bracket = PlayoffBracket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def playoff_bracket_params
      params.fetch(:playoff_bracket, {})
    end
end
