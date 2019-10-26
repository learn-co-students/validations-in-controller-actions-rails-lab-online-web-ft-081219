class Author < ActiveRecord::Base
  validates_presence_of :name 
  validates :email, uniqueness: true 
end
