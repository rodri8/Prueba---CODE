class RespuestasController < ActionController::Base
  layout "index"
  before_action :set_respuesta, only: [:show, :edit, :update, :destroy]

  # GET /respuestas
  def index
    @respuestas = Respuesta.all

    respond_to do |format|
      format.html
      format.json { render json: @respuestas }
    end
  end

  # GET /respuestas/1
  def show

    respond_to do |format|
      format.html
      format.json { render json: @respuesta }
    end

  end

  # GET /respuestas/new
  def new
    @respuesta = Respuesta.new
  end

  # GET /respuestas/1/edit
  def edit
  end

  # POST /respuestas
  def create
    @respuesta = Respuesta.new(respuesta_params)

    if @respuesta.save
      render json: @respuesta, status: :created, location: @respuesta
    else
      render json: @respuesta.errors, status: :unprocessable_entity
    end

    #if @respuesta.save
    #  redirect_to @respuesta, notice: 'Respuesta was successfully created.'
    #else
    #  render :new
    #end
  end

  # PATCH/PUT /respuestas/1
  def update
    if @respuesta.update(empresa_params)
      render json: @respuesta
    else
      render json: @respuesta.errors, status: :unprocessable_entity
    end
  end

  # DELETE /respuestas/1
  def destroy
    @respuesta.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respuesta
      @respuesta = Respuesta.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def respuesta_params
      params.require(:respuesta).permit(:nombre, :pregunta1, :pregunta2, :pregunta3, :pregunta4, :pregunta5, :codigo, :nota, :estado)
    end
end
