require 'test_helper'

class AlgosControllerTest < ActionController::TestCase
  setup do
    @algo = algos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:algos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create algo" do
    assert_difference('Algo.count') do
      post :create, algo: { fecha: @algo.fecha, nombre: @algo.nombre }
    end

    assert_redirected_to algo_path(assigns(:algo))
  end

  test "should show algo" do
    get :show, id: @algo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @algo
    assert_response :success
  end

  test "should update algo" do
    patch :update, id: @algo, algo: { fecha: @algo.fecha, nombre: @algo.nombre }
    assert_redirected_to algo_path(assigns(:algo))
  end

  test "should destroy algo" do
    assert_difference('Algo.count', -1) do
      delete :destroy, id: @algo
    end

    assert_redirected_to algos_path
  end
end
