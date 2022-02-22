# == Schema Information
#
# Table name: imagenes
#
#  id         :integer          not null, primary key
#  nombre     :string
#  base64     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Imagene < ApplicationRecord

	validates :nombre, :base64, presence: true

end
