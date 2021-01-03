class Interactions
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
    @interactions[interaction_name] = {}
    @current_interaction = interaction_name
    instance_eval(&block)
    @current_interaction = nil
  end

  def listen(event, action)
    raise NoCurrentInteractionDefined unless @current_interaction

    @interactions[@current_interaction][event] = action
  end
end

Interactions.define do
  define :request_vaccination do
    listen :receive_text_message, CreateUser
    listen :create_user, InitiateVaccinateRequestInteraction
    listen :initiate_vaccinate_request_interaction, RequestUserFullName
    listen :receive_user_full_name, SaveUserFullName
    listen :save_user_name, RequestUserBirthDate
    listen :receive_user_birth_date, SaveUserBirthDate
    listen :save_user_birth_date, RequestUserZipcode
    listen :receive_user_zipcode, SaveUserZipcode
    listen :save_user_zipcode, SendEndVaccinateRequestMessage
    listen :send_end_vaccinate_request_message, EndVaccinateRequestInteraction
  end
end