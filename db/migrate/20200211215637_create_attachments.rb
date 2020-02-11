class CreateAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :attachments do |t|
      t.integer :message_id
      t.string :location

      t.timestamps
    end
  end
end
