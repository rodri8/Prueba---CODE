class EvaluacionesController < ActionController::Base
  layout "index"
  before_action :set_evaluacion, only: [:show, :edit, :update, :destroy]


  # GET /evaluaciones
  def index
    @evaluaciones = Evaluacion.all
  end

  # GET /evaluaciones/1
  def show
  end

  # GET /evaluaciones/new
  def new
    @evaluacion = Evaluacion.new
  end

  # GET /evaluaciones/1/edit
  def edit
  end

  # POST /evaluaciones
  def create
    @evaluacion = Evaluacion.new(evaluacion_params)

    if @evaluacion.save
      redirect_to @evaluacion, notice: 'Evaluacion was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /evaluaciones/1
  def update
    if @evaluacion.update(evaluacion_params)
      redirect_to @evaluacion, notice: 'Evaluacion was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /evaluaciones/1
  def destroy
    @evaluacion.destroy
    redirect_to evaluaciones_url, notice: 'Evaluacion was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluacion
      @evaluacion = Evaluacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaluacion_params
      params.require(:evaluacion).permit(:nombre, :preguntas, :estado)
    end
end
