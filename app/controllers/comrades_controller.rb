class ComradesController < ApplicationController
  before_action :set_comrade, only: %i[ show edit update destroy ]

  # GET /comrades or /comrades.json
  def index
    @comrades = Comrade.all
  end

  # GET /comrades/1 or /comrades/1.json
  def show
  end

  # GET /comrades/new
  def new
    @comrade = Comrade.new
  end

  # GET /comrades/1/edit
  def edit
  end

  # POST /comrades or /comrades.json
  def create
    @comrade = Comrade.new(comrade_params)

    respond_to do |format|
      if @comrade.save
        format.html { redirect_to comrade_url(@comrade), notice: "Comrade was successfully created." }
        format.json { render :show, status: :created, location: @comrade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comrades/1 or /comrades/1.json
  def update
    respond_to do |format|
      if @comrade.update(comrade_params)
        format.html { redirect_to comrade_url(@comrade), notice: "Comrade was successfully updated." }
        format.json { render :show, status: :ok, location: @comrade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comrades/1 or /comrades/1.json
  def destroy
    @comrade.destroy
    respond_to do |format|
      format.html { redirect_to comrades_url, notice: "Comrade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comrade
      @comrade = Comrade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comrade_params
      params.require(:comrade).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
