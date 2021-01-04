require "application_system_test_case"

class InteractionTypesTest < ApplicationSystemTestCase
  setup do
    @interaction_type = interaction_types(:one)
  end

  test "visiting the index" do
    visit interaction_types_url
    assert_selector "h1", text: "Interaction Types"
  end

  test "creating a Interaction type" do
    visit interaction_types_url
    click_on "New Interaction Type"

    fill_in "Name", with: @interaction_type.name
    click_on "Create Interaction type"

    assert_text "Interaction type was successfully created"
    click_on "Back"
  end

  test "updating a Interaction type" do
    visit interaction_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @interaction_type.name
    click_on "Update Interaction type"

    assert_text "Interaction type was successfully updated"
    click_on "Back"
  end

  test "destroying a Interaction type" do
    visit interaction_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interaction type was successfully destroyed"
  end
end
