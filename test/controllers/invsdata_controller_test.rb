require "test_helper"

class InvsdataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invsdatum = invsdata(:one)
  end

  test "should get index" do
    get invsdata_url
    assert_response :success
  end

  test "should get new" do
    get new_invsdatum_url
    assert_response :success
  end

  test "should create invsdatum" do
    assert_difference("Invsdatum.count") do
      post invsdata_url, params: { invsdatum: { inverse_string: @invsdatum.inverse_string, original_string: @invsdatum.original_string, string: @invsdatum.string } }
    end

    assert_redirected_to invsdatum_url(Invsdatum.last)
  end

  test "should show invsdatum" do
    get invsdatum_url(@invsdatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_invsdatum_url(@invsdatum)
    assert_response :success
  end

  test "should update invsdatum" do
    patch invsdatum_url(@invsdatum), params: { invsdatum: { inverse_string: @invsdatum.inverse_string, original_string: @invsdatum.original_string, string: @invsdatum.string } }
    assert_redirected_to invsdatum_url(@invsdatum)
  end

  test "should destroy invsdatum" do
    assert_difference("Invsdatum.count", -1) do
      delete invsdatum_url(@invsdatum)
    end

    assert_redirected_to invsdata_url
  end
end
