class Word < ActiveRecord::Base
  validates_presence_of :pl,:en
end