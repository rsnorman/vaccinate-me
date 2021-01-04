class Interactions::EventRecorder
  def self.record!(interaction, event_name)
    ::InteractionEvent.create!(
      interaction: interaction,
      event_type: ::EventType.find_or_create_by!(name: event_name)
    )
  end
end