require "application_system_test_case"

class RespuestasTest < ApplicationSystemTestCase
  setup do
    @respuesta = respuestas(:one)
  end

  test "visiting the index" do
    visit respuestas_url
    assert_selector "h1", text: "Respuestas"
  end

  test "creating a Respuesta" do
    visit respuestas_url
    click_on "New Respuesta"

    fill_in "Codigo", with: @respuesta.codigo
    fill_in "Estado", with: @respuesta.estado
    fill_in "Nombre", with: @respuesta.nombre
    fill_in "Nota", with: @respuesta.nota
    fill_in "Pregunta1", with: @respuesta.pregunta1
    fill_in "Pregunta2", with: @respuesta.pregunta2
    fill_in "Pregunta3", with: @respuesta.pregunta3
    fill_in "Pregunta4", with: @respuesta.pregunta4
    fill_in "Pregunta5", with: @respuesta.pregunta5
    click_on "Create Respuesta"

    assert_text "Respuesta was successfully created"
    click_on "Back"
  end

  test "updating a Respuesta" do
    visit respuestas_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @respuesta.codigo
    fill_in "Estado", with: @respuesta.estado
    fill_in "Nombre", with: @respuesta.nombre
    fill_in "Nota", with: @respuesta.nota
    fill_in "Pregunta1", with: @respuesta.pregunta1
    fill_in "Pregunta2", with: @respuesta.pregunta2
    fill_in "Pregunta3", with: @respuesta.pregunta3
    fill_in "Pregunta4", with: @respuesta.pregunta4
    fill_in "Pregunta5", with: @respuesta.pregunta5
    click_on "Update Respuesta"

    assert_text "Respuesta was successfully updated"
    click_on "Back"
  end

  test "destroying a Respuesta" do
    visit respuestas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Respuesta was successfully destroyed"
  end
end
