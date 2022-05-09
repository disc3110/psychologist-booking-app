class PsychologistsController < ApplicationController
  before_action :set_psychologist, only: %i[show update destroy]

  # GET /psychologists
  def index
    @psychologists = Psychologist.all

    render json: @psychologists
  end

  # GET /psychologists/1
  def show
    render json: @psychologist
  end

  # POST /psychologists
  def create
    @psychologist = Psychologist.new(psychologist_params)

    if @psychologist.save
      render json: @psychologist, status: :created, location: @psychologist
    else
      render json: @psychologist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /psychologists/1
  def update
    if @psychologist.update(psychologist_params)
      render json: @psychologist
    else
      render json: @psychologist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /psychologists/1
  def destroy
    @psychologist.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_psychologist
    @psychologist = Psychologist.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def psychologist_params
    params.require(:psychologist).permit(:name, :gender, :email, :area_of_specialty, :image)
  end
end
