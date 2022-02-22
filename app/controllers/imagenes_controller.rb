class ImagenesController < ApplicationController
  before_action :set_imagene, only: [:show, :update, :destroy]

  # GET /imagenes
  def index
    @imagenes = Imagene.all

    render json: @imagenes
  end

  # GET /imagenes/1
  def show
    render json: @imagene
  end

  # POST /imagenes
  def create
    @imagene = Imagene.new(imagene_params)

    if @imagene.save
      render json: @imagene, status: :created, location: @imagene
    else
      render json: @imagene.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /imagenes/1
  def update
    if @imagene.update(imagene_params)
      render json: @imagene
    else
      render json: @imagene.errors, status: :unprocessable_entity
    end
  end

  # DELETE /imagenes/1
  def destroy
    @imagene.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagene
      @imagene = Imagene.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def imagene_params
      params.require(:imagene).permit(:nombre, :base64)
    end
end
