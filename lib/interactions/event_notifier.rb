class Interactions::EventNotifier
  def self.notify!(event)
    interaction = event.interaction
    interaction_definition = Interactions.all[interaction.type_name.to_sym]
    action = interaction_definition.events[event.type_name.to_sym]
    action.new(Message.last).execute
  end
end