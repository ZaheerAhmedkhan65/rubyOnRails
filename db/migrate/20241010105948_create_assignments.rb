class CreateAssignments < ActiveRecord::Migration[7.2]
  def change
    create_table :assignments do |t|
      t.string :assignment_title
      t.string :due_date
      t.string :assignment_topic
      t.string :related_links
      t.string :assignment_description

      t.timestamps
    end
  end
end
