class PreguntasController < ActionController::Base
  layout "index"
  
  before_action :set_pregunta, only: [:show, :edit, :update, :destroy]

  # GET /preguntas
  def index
    @preguntas = Pregunta.all
  end

  # GET /preguntas/1
  def show
  end

  # GET /preguntas/new
  def new
    @pregunta = Pregunta.new
  end

  # GET /preguntas/1/edit
  def edit
  end

  # POST /preguntas
  def create
    @pregunta = Pregunta.new(pregunta_params)

    if @pregunta.save
      redirect_to @pregunta, notice: 'Pregunta was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /preguntas/1
  def update
    if @pregunta.update(pregunta_params)
      redirect_to @pregunta, notice: 'Pregunta was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /preguntas/1
  def destroy
    @pregunta.destroy
    redirect_to preguntas_url, notice: 'Pregunta was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregunta
      @pregunta = Pregunta.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pregunta_params
      params.require(:pregunta).permit(:evaluacion_id, :texto, :correcta, :estado)
    end
end
