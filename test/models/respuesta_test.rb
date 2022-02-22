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
require "test_helper"

class RespuestaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
