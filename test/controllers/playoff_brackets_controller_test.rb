require "test_helper"

class PlayoffBracketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playoff_bracket = playoff_brackets(:one)
  end

  test "should get index" do
    get playoff_brackets_url
    assert_response :success
  end

  test "should get new" do
    get new_playoff_bracket_url
    assert_response :success
  end

  test "should create playoff_bracket" do
    assert_difference("PlayoffBracket.count") do
      post playoff_brackets_url, params: { playoff_bracket: {  } }
    end

    assert_redirected_to playoff_bracket_url(PlayoffBracket.last)
  end

  test "should show playoff_bracket" do
    get playoff_bracket_url(@playoff_bracket)
    assert_response :success
  end

  test "should get edit" do
    get edit_playoff_bracket_url(@playoff_bracket)
    assert_response :success
  end

  test "should update playoff_bracket" do
    patch playoff_bracket_url(@playoff_bracket), params: { playoff_bracket: {  } }
    assert_redirected_to playoff_bracket_url(@playoff_bracket)
  end

  test "should destroy playoff_bracket" do
    assert_difference("PlayoffBracket.count", -1) do
      delete playoff_bracket_url(@playoff_bracket)
    end

    assert_redirected_to playoff_brackets_url
  end
end
