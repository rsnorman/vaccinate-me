class Interactions::Initiator
  def initialize(interaction_name, message)
    @interaction_definition = Interactions.all[interaction_name.to_sym]
    @message = message
  end

  def initiate!
  end
end