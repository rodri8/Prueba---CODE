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
require "test_helper"

class EvaluacionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
