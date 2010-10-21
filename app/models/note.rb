class Note < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 3
   validates_presence_of :plan
  has_many :comments
end
