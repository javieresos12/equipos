require 'test_helper'

class AsignacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asignacione = asignaciones(:one)
  end

  test "should get index" do
    get asignaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_asignacione_url
    assert_response :success
  end

  test "should create asignacione" do
    assert_difference('Asignacione.count') do
      post asignaciones_url, params: { asignacione: { eliminado: @asignacione.eliminado, fecha: @asignacione.fecha, idEstadoPersonaEquipo: @asignacione.idEstadoPersonaEquipo, persona_id: @asignacione.persona_id } }
    end

    assert_redirected_to asignacione_url(Asignacione.last)
  end

  test "should show asignacione" do
    get asignacione_url(@asignacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_asignacione_url(@asignacione)
    assert_response :success
  end

  test "should update asignacione" do
    patch asignacione_url(@asignacione), params: { asignacione: { eliminado: @asignacione.eliminado, fecha: @asignacione.fecha, idEstadoPersonaEquipo: @asignacione.idEstadoPersonaEquipo, persona_id: @asignacione.persona_id } }
    assert_redirected_to asignacione_url(@asignacione)
  end

  test "should destroy asignacione" do
    assert_difference('Asignacione.count', -1) do
      delete asignacione_url(@asignacione)
    end

    assert_redirected_to asignaciones_url
  end
end
