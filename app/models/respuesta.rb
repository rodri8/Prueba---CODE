# == Schema Information
#
# Table name: respuestas
#
#  id         :integer          not null, primary key
#  nombre     :string
#  pregunta1  :integer
#  pregunta2  :integer
#  pregunta3  :integer
#  pregunta4  :integer
#  pregunta5  :integer
#  codigo     :string
#  nota       :integer
#  estado     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Respuesta < ApplicationRecord

	validates :codigo, uniqueness: true

	validates :nombre, :pregunta1, :pregunta2, :pregunta3, :pregunta4, :pregunta5, presence: true

	before_create :create_record

	private
	def create_record
		self.estado = "completado"
		self.codigo = ([nil]*8).map { ((48..57).to_a+(65..90).to_a+(97..122).to_a).sample.chr }.join
	end
end
