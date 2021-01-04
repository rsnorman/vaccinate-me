class CreateInteractionEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :interaction_events do |t|
      t.references :event_type, null: false, foreign_key: true
      t.references :interaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
