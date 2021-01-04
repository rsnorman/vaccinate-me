class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :source_id
      t.text :body
      t.string :from

      t.timestamps
    end
  end
end
