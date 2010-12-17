class Note < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 5
   validates_presence_of :plan
  has_many :comments
end
