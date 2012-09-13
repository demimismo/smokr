class TestCase < ActiveRecord::Base
  belongs_to :project
  attr_accessible :description, :title

  validates_presence_of :title
end
