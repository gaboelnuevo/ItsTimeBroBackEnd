require 'test_helper'

class AlarmasControllerTest < ActionController::TestCase
  setup do
    @alarma = alarmas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alarmas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alarma" do
    assert_difference('Alarma.count') do
      post :create, alarma: { fechaAlarma: @alarma.fechaAlarma, nombreAlarma: @alarma.nombreAlarma, usuario_id: @alarma.usuario_id }
    end

    assert_redirected_to alarma_path(assigns(:alarma))
  end

  test "should show alarma" do
    get :show, id: @alarma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alarma
    assert_response :success
  end

  test "should update alarma" do
    patch :update, id: @alarma, alarma: { fechaAlarma: @alarma.fechaAlarma, nombreAlarma: @alarma.nombreAlarma, usuario_id: @alarma.usuario_id }
    assert_redirected_to alarma_path(assigns(:alarma))
  end

  test "should destroy alarma" do
    assert_difference('Alarma.count', -1) do
      delete :destroy, id: @alarma
    end

    assert_redirected_to alarmas_path
  end
end
