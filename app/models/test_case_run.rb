class TestCaseRun < ActiveRecord::Base
  belongs_to :test_case
  attr_accessible :comment, :state
end
