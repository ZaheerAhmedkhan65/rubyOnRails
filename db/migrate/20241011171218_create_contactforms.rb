class CreateContactforms < ActiveRecord::Migration[7.2]
  def change
    create_table :contactforms do |t|
      t.string :user_name
      t.string :user_email
      t.string :user_message

      t.timestamps
    end
  end
end
