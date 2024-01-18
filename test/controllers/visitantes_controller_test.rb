require "test_helper"

class VisitantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitante = visitantes(:one)
  end

  test "should get index" do
    get visitantes_url
    assert_response :success
  end

  test "should get new" do
    get new_visitante_url
    assert_response :success
  end

  test "should create visitante" do
    assert_difference("Visitante.count") do
      post visitantes_url, params: { visitante: { concluida: @visitante.concluida, cpf: @visitante.cpf, data_hora: @visitante.data_hora, foto: @visitante.foto, nome: @visitante.nome, rg: @visitante.rg, setor_id: @visitante.setor_id, tel: @visitante.tel } }
    end

    assert_redirected_to visitante_url(Visitante.last)
  end

  test "should show visitante" do
    get visitante_url(@visitante)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitante_url(@visitante)
    assert_response :success
  end

  test "should update visitante" do
    patch visitante_url(@visitante), params: { visitante: { concluida: @visitante.concluida, cpf: @visitante.cpf, data_hora: @visitante.data_hora, foto: @visitante.foto, nome: @visitante.nome, rg: @visitante.rg, setor_id: @visitante.setor_id, tel: @visitante.tel } }
    assert_redirected_to visitante_url(@visitante)
  end

  test "should destroy visitante" do
    assert_difference("Visitante.count", -1) do
      delete visitante_url(@visitante)
    end

    assert_redirected_to visitantes_url
  end
end
