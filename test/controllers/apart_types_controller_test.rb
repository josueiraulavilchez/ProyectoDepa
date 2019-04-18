require 'test_helper'

class ApartTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apart_type = apart_types(:one)
  end

  test "should get index" do
    get apart_types_url
    assert_response :success
  end

  test "should get new" do
    get new_apart_type_url
    assert_response :success
  end

  test "should create apart_type" do
    assert_difference('ApartType.count') do
      post apart_types_url, params: { apart_type: { area: @apart_type.area, floor: @apart_type.floor, name: @apart_type.name } }
    end

    assert_redirected_to apart_type_url(ApartType.last)
  end

  test "should show apart_type" do
    get apart_type_url(@apart_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_apart_type_url(@apart_type)
    assert_response :success
  end

  test "should update apart_type" do
    patch apart_type_url(@apart_type), params: { apart_type: { area: @apart_type.area, floor: @apart_type.floor, name: @apart_type.name } }
    assert_redirected_to apart_type_url(@apart_type)
  end

  test "should destroy apart_type" do
    assert_difference('ApartType.count', -1) do
      delete apart_type_url(@apart_type)
    end

    assert_redirected_to apart_types_url
  end
end
