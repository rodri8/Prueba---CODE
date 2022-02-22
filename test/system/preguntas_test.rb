require "application_system_test_case"

class PreguntasTest < ApplicationSystemTestCase
  setup do
    @pregunta = preguntas(:one)
  end

  test "visiting the index" do
    visit preguntas_url
    assert_selector "h1", text: "Preguntas"
  end

  test "creating a Pregunta" do
    visit preguntas_url
    click_on "New Pregunta"

    fill_in "Correcta", with: @pregunta.correcta
    fill_in "Estado", with: @pregunta.estado
    fill_in "Evaluacion", with: @pregunta.evaluacion_id
    fill_in "Texto", with: @pregunta.texto
    click_on "Create Pregunta"

    assert_text "Pregunta was successfully created"
    click_on "Back"
  end

  test "updating a Pregunta" do
    visit preguntas_url
    click_on "Edit", match: :first

    fill_in "Correcta", with: @pregunta.correcta
    fill_in "Estado", with: @pregunta.estado
    fill_in "Evaluacion", with: @pregunta.evaluacion_id
    fill_in "Texto", with: @pregunta.texto
    click_on "Update Pregunta"

    assert_text "Pregunta was successfully updated"
    click_on "Back"
  end

  test "destroying a Pregunta" do
    visit preguntas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pregunta was successfully destroyed"
  end
end
