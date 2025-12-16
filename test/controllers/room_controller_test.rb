require "test_helper"

class RoomControllerTest < ActionDispatch::IntegrationTest
  test "should get slug_name:string" do
    get room_slug_name:string_url
    assert_response :success
  end

  test "should get status:integer" do
    get room_status:integer_url
    assert_response :success
  end

  test "should get deck_type:string" do
    get room_deck_type:string_url
    assert_response :success
  end
end
