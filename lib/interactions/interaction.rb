class Interactions::Interaction
  attr_reader :name, :events

  def initialize(name)
    @name = name
    @events = {}
  end

  def listen(event, action)
    @events[event] = action
  end
end