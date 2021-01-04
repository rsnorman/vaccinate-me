class Interactions::Definer
  include Singleton

  NoCurrentInteractionDefined = Class.new(StandardError)

  class << self
    extend Forwardable
    def_delegators :instance
  end

  def self.define(&block)
    instance.instance_eval(&block)
  end

  def self.all
    instance.interactions
  end

  attr_reader :interactions

  def initialize
    @interactions = Hash.new { |h, k| h[k] = {} }
  end

  def define(interaction_name, &block)
    interaction = Interactions::InteractionDefinition.new(interaction_name)
    interaction.instance_eval(&block)
    @interactions[interaction_name] = interaction
  end

  def listen(event, action)
    raise NoCurrentInteractionDefined unless @current_interaction

    @interactions[@current_interaction].listen(event, action)
  end
end