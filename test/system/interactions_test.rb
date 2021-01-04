require "application_system_test_case"

class InteractionsTest < ApplicationSystemTestCase
  setup do
    @interaction = interactions(:one)
  end

  test "visiting the index" do
    visit interactions_url
    assert_selector "h1", text: "Interactions"
  end

  test "creating a Interaction" do
    visit interactions_url
    click_on "New Interaction"

    fill_in "Interaction type", with: @interaction.interaction_type_id
    click_on "Create Interaction"

    assert_text "Interaction was successfully created"
    click_on "Back"
  end

  test "updating a Interaction" do
    visit interactions_url
    click_on "Edit", match: :first

    fill_in "Interaction type", with: @interaction.interaction_type_id
    click_on "Update Interaction"

    assert_text "Interaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Interaction" do
    visit interactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interaction was successfully destroyed"
  end
end
