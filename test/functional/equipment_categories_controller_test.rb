require 'test_helper'

class EquipmentCategoriesControllerTest < ActionController::TestCase
  setup do
    @equipment_category = equipment_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_category" do
    assert_difference('EquipmentCategory.count') do
      post :create, equipment_category: @equipment_category.attributes
    end

    assert_redirected_to equipment_category_path(assigns(:equipment_category))
  end

  test "should show equipment_category" do
    get :show, id: @equipment_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_category.to_param
    assert_response :success
  end

  test "should update equipment_category" do
    put :update, id: @equipment_category.to_param, equipment_category: @equipment_category.attributes
    assert_redirected_to equipment_category_path(assigns(:equipment_category))
  end

  test "should destroy equipment_category" do
    assert_difference('EquipmentCategory.count', -1) do
      delete :destroy, id: @equipment_category.to_param
    end

    assert_redirected_to equipment_categories_path
  end
end
