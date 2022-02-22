class ExamenController < ActionController::Base

  layout "index"

  def index
    
    @pregunta1 = Pregunta.where(:evaluacion_id => 1).where(:estado => 'activo') .all
    @pregunta2 = Pregunta.where(:evaluacion_id => 2).where(:estado => 'activo') .all
    @pregunta3 = Pregunta.where(:evaluacion_id => 3).where(:estado => 'activo') .all
    @pregunta4 = Pregunta.where(:evaluacion_id => 4).where(:estado => 'activo') .all
    @pregunta5 = Pregunta.where(:evaluacion_id => 5).where(:estado => 'activo') .all

  end

  def show

    @respuesta = Respuesta.find_by_codigo(params[:codigo])
    
    @pregunta1 = Pregunta.where(:evaluacion_id => 1).where(:estado => 'activo') .all
    @pregunta2 = Pregunta.where(:evaluacion_id => 2).where(:estado => 'activo') .all
    @pregunta3 = Pregunta.where(:evaluacion_id => 3).where(:estado => 'activo') .all
    @pregunta4 = Pregunta.where(:evaluacion_id => 4).where(:estado => 'activo') .all
    @pregunta5 = Pregunta.where(:evaluacion_id => 5).where(:estado => 'activo') .all

  end
end
