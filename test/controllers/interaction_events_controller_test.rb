require 'test_helper'

class InteractionEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interaction_event = interaction_events(:one)
  end

  test "should get index" do
    get interaction_events_url
    assert_response :success
  end

  test "should get new" do
    get new_interaction_event_url
    assert_response :success
  end

  test "should create interaction_event" do
    assert_difference('InteractionEvent.count') do
      post interaction_events_url, params: { interaction_event: { event_type_id: @interaction_event.event_type_id, interaction_id: @interaction_event.interaction_id } }
    end

    assert_redirected_to interaction_event_url(InteractionEvent.last)
  end

  test "should show interaction_event" do
    get interaction_event_url(@interaction_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_interaction_event_url(@interaction_event)
    assert_response :success
  end

  test "should update interaction_event" do
    patch interaction_event_url(@interaction_event), params: { interaction_event: { event_type_id: @interaction_event.event_type_id, interaction_id: @interaction_event.interaction_id } }
    assert_redirected_to interaction_event_url(@interaction_event)
  end

  test "should destroy interaction_event" do
    assert_difference('InteractionEvent.count', -1) do
      delete interaction_event_url(@interaction_event)
    end

    assert_redirected_to interaction_events_url
  end
end
