class InteractionEvent < ApplicationRecord
  belongs_to :event_type
  belongs_to :interaction

  def type_name
    event_type.name
  end
end
