require "application_system_test_case"

class PlayoffBracketsTest < ApplicationSystemTestCase
  setup do
    @playoff_bracket = playoff_brackets(:one)
  end

  test "visiting the index" do
    visit playoff_brackets_url
    assert_selector "h1", text: "Playoff brackets"
  end

  test "should create playoff bracket" do
    visit playoff_brackets_url
    click_on "New playoff bracket"

    click_on "Create Playoff bracket"

    assert_text "Playoff bracket was successfully created"
    click_on "Back"
  end

  test "should update Playoff bracket" do
    visit playoff_bracket_url(@playoff_bracket)
    click_on "Edit this playoff bracket", match: :first

    click_on "Update Playoff bracket"

    assert_text "Playoff bracket was successfully updated"
    click_on "Back"
  end

  test "should destroy Playoff bracket" do
    visit playoff_bracket_url(@playoff_bracket)
    click_on "Destroy this playoff bracket", match: :first

    assert_text "Playoff bracket was successfully destroyed"
  end
end
