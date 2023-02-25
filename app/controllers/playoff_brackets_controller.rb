class PlayoffBracketsController < ApplicationController
  before_action :set_playoff_bracket, only: %i[ show edit update destroy ]

  # GET /playoff_brackets or /playoff_brackets.json
  def index
    @playoff_brackets = PlayoffBracket.all
  end

  # GET /playoff_brackets/1 or /playoff_brackets/1.json
  def show
  end

  # GET /playoff_brackets/new
  def new
    @playoff_bracket = PlayoffBracket.new
  end

  # GET /playoff_brackets/1/edit
  def edit
  end

  # POST /playoff_brackets or /playoff_brackets.json
  def create
  end

  # PATCH/PUT /playoff_brackets/1 or /playoff_brackets/1.json
  def update
  end

  # DELETE /playoff_brackets/1 or /playoff_brackets/1.json
  def destroy
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
