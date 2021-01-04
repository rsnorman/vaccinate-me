class Interactions::Initiator
  def initialize(interaction_name, message)
    @interaction_definition = Interactions.all[interaction_name.to_sym]
    @message = message
  end

  def initiate!
    ::Interaction.transaction do
      ::Interaction.create!(
        interaction_type: InteractionType.find_or_create_by!(name: @interaction_definition.name)
      )
    end
  end
end