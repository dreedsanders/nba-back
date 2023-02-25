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
    @playoff_bracket = PlayoffBracket.new(playoff_bracket_params)

    respond_to do |format|
      if @playoff_bracket.save
        format.html { redirect_to playoff_bracket_url(@playoff_bracket), notice: "Playoff bracket was successfully created." }
        format.json { render :show, status: :created, location: @playoff_bracket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @playoff_bracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playoff_brackets/1 or /playoff_brackets/1.json
  def update
    respond_to do |format|
      if @playoff_bracket.update(playoff_bracket_params)
        format.html { redirect_to playoff_bracket_url(@playoff_bracket), notice: "Playoff bracket was successfully updated." }
        format.json { render :show, status: :ok, location: @playoff_bracket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @playoff_bracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playoff_brackets/1 or /playoff_brackets/1.json
  def destroy
    @playoff_bracket.destroy

    respond_to do |format|
      format.html { redirect_to playoff_brackets_url, notice: "Playoff bracket was successfully destroyed." }
      format.json { head :no_content }
    end
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
