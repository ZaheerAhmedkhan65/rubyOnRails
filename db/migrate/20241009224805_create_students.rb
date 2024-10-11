class CreateStudents < ActiveRecord::Migration[7.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :personal_email
      t.string :repository_link
      t.string :page_link
      t.string :phone_number

      t.timestamps
    end
  end
end
