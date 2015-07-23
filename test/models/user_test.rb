require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should not save article without title" do
    
    assert_not devise
end
end
