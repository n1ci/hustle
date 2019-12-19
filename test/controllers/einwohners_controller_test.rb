require 'test_helper'

class EinwohnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @einwohner = einwohners(:one)
  end

  test "should get index" do
    get einwohners_url
    assert_response :success
  end

  test "should get new" do
    get new_einwohner_url
    assert_response :success
  end

  test "should create einwohner" do
    assert_difference('Einwohner.count') do
      post einwohners_url, params: { einwohner: { alter: @einwohner.alter, name: @einwohner.name, stadt_id: @einwohner.stadt_id } }
    end

    assert_redirected_to einwohner_url(Einwohner.last)
  end

  test "should show einwohner" do
    get einwohner_url(@einwohner)
    assert_response :success
  end

  test "should get edit" do
    get edit_einwohner_url(@einwohner)
    assert_response :success
  end

  test "should update einwohner" do
    patch einwohner_url(@einwohner), params: { einwohner: { alter: @einwohner.alter, name: @einwohner.name, stadt_id: @einwohner.stadt_id } }
    assert_redirected_to einwohner_url(@einwohner)
  end

  test "should destroy einwohner" do
    assert_difference('Einwohner.count', -1) do
      delete einwohner_url(@einwohner)
    end

    assert_redirected_to einwohners_url
  end
end
