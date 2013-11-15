class LpgsController < ApplicationController
  before_action :set_lpg, only: [:show, :edit, :update, :destroy]

  # GET /lpgs
  # GET /lpgs.json
  def index
    @lpgs = Lpg.all
  end

  # GET /lpgs/1
  # GET /lpgs/1.json
  def show
  end

  # GET /lpgs/new
  def new
    @lpg = Lpg.new
  end

  # POST /lpgs
  # POST /lpgs.json
  def create
    @lpg = Lpg.new(lpg_params)

    respond_to do |format|
      if verify_recaptcha(:model => @lpg, :message => "Oh! It's error with reCAPTCHA! make sure you have entered the right information ") and @lpg.save
        format.html { redirect_to @lpg, notice: 'Lpg was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lpg }
      else
        format.html { render action: 'new' }
        format.json { render json: @lpg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lpgs/1
  # PATCH/PUT /lpgs/1.json

  # DELETE /lpgs/1
  # DELETE /lpgs/1.json
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lpg
      @lpg = Lpg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lpg_params
      params.require(:lpg).permit(:full_name, :email, :username, :state, :city, :lga, :description)
    end
end
