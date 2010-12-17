class Task < ActiveRecord::Base

    scope :important_not_urgent, where("important = true AND urgent = false")
    scope :important_urgent, where("important = true AND urgent = true")
    scope :not_important_urgent, where("important = false AND urgent = true")
    scope :not_important_not_urgent, where("important = false AND urgent = false")

    scope :todo, where("done = false")
    scope :finished, where("done = true")

end
