class InteractionEvent < ApplicationRecord
  belongs_to :event_type
  belongs_to :interaction
end
