class Assignment < ApplicationRecord
     validates :assignment_title, :due_date, :assignment_topic, :related_links, :assignment_description, presence: true
end
