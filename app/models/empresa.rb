# == Schema Information
#
# Table name: empresas
#
#  id               :integer          not null, primary key
#  nombre_comercial :string
#  razon_social     :string
#  telefono         :string
#  correo           :string
#  nit              :string
#  direccion        :string
#  estado           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Empresa < ApplicationRecord

	validates :nombre_comercial, :razon_social, :telefono, :correo, :nit, :direccion, presence: true

	validates :razon_social, :correo, :nit, uniqueness: true

	before_create :create_record

	private
	def create_record
		self.estado = "nuevo"
	end
end
