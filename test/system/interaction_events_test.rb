require "application_system_test_case"

class InteractionEventsTest < ApplicationSystemTestCase
  setup do
    @interaction_event = interaction_events(:one)
  end

  test "visiting the index" do
    visit interaction_events_url
    assert_selector "h1", text: "Interaction Events"
  end

  test "creating a Interaction event" do
    visit interaction_events_url
    click_on "New Interaction Event"

    fill_in "Event type", with: @interaction_event.event_type_id
    fill_in "Interaction", with: @interaction_event.interaction_id
    click_on "Create Interaction event"

    assert_text "Interaction event was successfully created"
    click_on "Back"
  end

  test "updating a Interaction event" do
    visit interaction_events_url
    click_on "Edit", match: :first

    fill_in "Event type", with: @interaction_event.event_type_id
    fill_in "Interaction", with: @interaction_event.interaction_id
    click_on "Update Interaction event"

    assert_text "Interaction event was successfully updated"
    click_on "Back"
  end

  test "destroying a Interaction event" do
    visit interaction_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interaction event was successfully destroyed"
  end
end
