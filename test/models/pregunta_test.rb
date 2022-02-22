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
require "test_helper"

class PreguntaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
