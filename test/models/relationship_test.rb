require "test_helper"

class RelationshipTest < ActiveSupport::TestCase
  
  def setup 
    @relationship = Relationship.new(follower_id: users(:aleksandr).id,
                                               followed_id: users(:sofia).id)
  end

  test "should bs valid" do
    assert @relationship.valid?
  end

  test "should require a followed_id" do
    @relationship.follower_id = nil
    assert_not @relationship.valid?
  end


end
