require 'test_helper'

class PesselFormsControllerTest < ActionController::TestCase
  setup do
    @pessel_form = pessel_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessel_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessel_form" do
    assert_difference('PesselForm.count') do
      post :create, pessel_form: { pessel: @pessel_form.pessel }
    end

    assert_redirected_to pessel_form_path(assigns(:pessel_form))
  end

  test "should show pessel_form" do
    get :show, id: @pessel_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessel_form
    assert_response :success
  end

  test "should update pessel_form" do
    patch :update, id: @pessel_form, pessel_form: { pessel: @pessel_form.pessel }
    assert_redirected_to pessel_form_path(assigns(:pessel_form))
  end

  test "should destroy pessel_form" do
    assert_difference('PesselForm.count', -1) do
      delete :destroy, id: @pessel_form
    end

    assert_redirected_to pessel_forms_path
  end
end
