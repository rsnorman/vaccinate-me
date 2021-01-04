class CreateInteractions < ActiveRecord::Migration[6.0]
  def change
    create_table :interactions do |t|
      t.references :interaction_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
