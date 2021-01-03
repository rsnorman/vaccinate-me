module Interactions
  require_relative 'interactions/definer'
  require_relative 'interactions/interaction'

  def self.define(&block)
    Interactions::Definer.define(&block)
  end

  def self.all
    Interactions::Definer.all
  end
end