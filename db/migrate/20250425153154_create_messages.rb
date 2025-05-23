class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.references :chat, null: false, foreign_key: true
      t.integer :role
      t.string :content
      t.integer :response_number

      t.timestamps
    end
  end
end
