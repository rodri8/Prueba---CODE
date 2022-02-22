# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  nombre     :string
#  estado     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Role < ApplicationRecord

	validates :nombre, presence: true

	validates :nombre, uniqueness: true


	before_create :create_record

	private
	def create_record
		self.estado = "nuevo"
	end

end
