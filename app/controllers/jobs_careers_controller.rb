class JobsCareersController < ApplicationController
  before_action :set_jobs_career, only: [:show ]

  # GET /jobs_careers
  # GET /jobs_careers.json

  # GET /jobs_careers/1
  # GET /jobs_careers/1.json
  def show
  end

  # GET /jobs_careers/new
  def new
    @jobs_career = JobsCareer.new
  end

  # GET /jobs_careers/1/edit

  # POST /jobs_careers
  # POST /jobs_careers.json
  def create
    @jobs_career = JobsCareer.new(jobs_career_params)

    respond_to do |format|
      if @jobs_career.save
        format.html { redirect_to @jobs_career, notice: 'Jobs career was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jobs_career }
      else
        format.html { render action: 'new' }
        format.json { render json: @jobs_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs_careers/1
  # PATCH/PUT /jobs_careers/1.json

  # DELETE /jobs_careers/1
  # DELETE /jobs_careers/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobs_career
      @jobs_career = JobsCareer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobs_career_params
      params.require(:jobs_career).permit(:surname, :middle_name, :first_name, :prefix, :position_applied_for, :email, :country, :date_of_birth, :sex, :qulification, :state, :contact_address, :self_description, :proposed_pay, :portfolio_function, :cv, :plan)
    end
end
