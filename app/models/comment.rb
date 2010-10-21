class Comment < ActiveRecord::Base
  belongs_to :note
  validates_presence_of(:body, :message => "musisz wpis")

end
