class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :subject
      t.string :content
      t.boolean :hidden

      t.timestamps
    end
  end
end
