module Interactions
  require_relative 'interactions/definer'
  require_relative 'interactions/interaction_definition'
  require_relative 'interactions/initiator'

  def self.define(&block)
    Interactions::Definer.define(&block)
  end

  def self.all
    Interactions::Definer.all
  end

  def self.initiate!
    Interactions::Initiator.initiate!(interaction_name, message)
  end
end