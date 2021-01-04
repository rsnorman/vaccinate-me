class Interaction < ApplicationRecord
  belongs_to :interaction_type

  def type_name
    interaction_type.name
  end
end
