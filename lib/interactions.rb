module Interactions
  require_relative 'interactions/definer'
  require_relative 'interactions/interaction_definition'
  require_relative 'interactions/initiator'
  require_relative 'interactions/event_recorder'

  def self.define(&block)
    Interactions::Definer.define(&block)
  end

  def self.all
    Interactions::Definer.all
  end

  def self.initiate!(interaction_name, message)
    Interactions::Initiator.new(interaction_name, message).initiate!
  end
end