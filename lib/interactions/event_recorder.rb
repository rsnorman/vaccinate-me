class Interactions::EventRecorder
  def self.record!(interaction, event_name)
    event = ::InteractionEvent.create!(
      interaction: interaction,
      event_type: ::EventType.find_or_create_by!(name: event_name)
    )
    Interactions::EventNotifier.notify!(event)
  end
end