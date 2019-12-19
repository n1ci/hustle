require 'test_helper'

class StadtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stadt = stadts(:one)
  end

  test "should get index" do
    get stadts_url
    assert_response :success
  end

  test "should get new" do
    get new_stadt_url
    assert_response :success
  end

  test "should create stadt" do
    assert_difference('Stadt.count') do
      post stadts_url, params: { stadt: { anzahlEinwohner: @stadt.anzahlEinwohner, name: @stadt.name, ort: @stadt.ort } }
    end

    assert_redirected_to stadt_url(Stadt.last)
  end

  test "should show stadt" do
    get stadt_url(@stadt)
    assert_response :success
  end

  test "should get edit" do
    get edit_stadt_url(@stadt)
    assert_response :success
  end

  test "should update stadt" do
    patch stadt_url(@stadt), params: { stadt: { anzahlEinwohner: @stadt.anzahlEinwohner, name: @stadt.name, ort: @stadt.ort } }
    assert_redirected_to stadt_url(@stadt)
  end

  test "should destroy stadt" do
    assert_difference('Stadt.count', -1) do
      delete stadt_url(@stadt)
    end

    assert_redirected_to stadts_url
  end
end
