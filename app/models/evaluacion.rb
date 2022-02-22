# == Schema Information
#
# Table name: evaluaciones
#
#  id         :integer          not null, primary key
#  nombre     :string
#  preguntas  :integer
#  estado     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Evaluacion < ApplicationRecord

	validates :nombre, presence: true

	validates :nombre, uniqueness: true

	validates :preguntas,  numericality: {greater_than_or_equal_to: 1}, presence: false

	before_create :create_record

	private
	def create_record
		self.estado = "activo"
	end

end
