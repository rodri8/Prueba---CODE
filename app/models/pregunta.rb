# == Schema Information
#
# Table name: preguntas
#
#  id            :integer          not null, primary key
#  evaluacion_id :integer          not null
#  texto         :string
#  correcta      :string
#  estado        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Pregunta < ApplicationRecord
  belongs_to :evaluacion

  validates :texto, :evaluacion, :correcta, presence: true

  before_create :create_record, :update_response

  before_update :update_response


  private
  def create_record
    self.estado = "activo"
  end

  def update_response
    if self.correcta == "Si" 
      Pregunta.where(:evaluacion_id => self.evaluacion_id).update_all("correcta = 'No'")
      self.correcta = "Si"
    end
  end

end
