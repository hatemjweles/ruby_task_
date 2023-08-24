require "application_system_test_case"

class InvsdataTest < ApplicationSystemTestCase
  setup do
    @invsdatum = invsdata(:one)
  end

  test "visiting the index" do
    visit invsdata_url
    assert_selector "h1", text: "Invsdata"
  end

  test "should create invsdatum" do
    visit invsdata_url
    click_on "New invsdatum"

    fill_in "Inverse string", with: @invsdatum.inverse_string
    fill_in "Original string", with: @invsdatum.original_string
    fill_in "String", with: @invsdatum.string
    click_on "Create Invsdatum"

    assert_text "Invsdatum was successfully created"
    click_on "Back"
  end

  test "should update Invsdatum" do
    visit invsdatum_url(@invsdatum)
    click_on "Edit this invsdatum", match: :first

    fill_in "Inverse string", with: @invsdatum.inverse_string
    fill_in "Original string", with: @invsdatum.original_string
    fill_in "String", with: @invsdatum.string
    click_on "Update Invsdatum"

    assert_text "Invsdatum was successfully updated"
    click_on "Back"
  end

  test "should destroy Invsdatum" do
    visit invsdatum_url(@invsdatum)
    click_on "Destroy this invsdatum", match: :first

    assert_text "Invsdatum was successfully destroyed"
  end
end
