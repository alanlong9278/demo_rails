require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "can not save without username" do
    user = User.new
    user.email = "547533434@qq.com"
    user.password = "1sd23456"
    assert_not user.save, "can not save a user without a username"  
  end
  test "can not save when email format is not right" do
    user = User.new
    user.username = "alan"
    user.email = "547533434"
    user.password = "1sd23456"
    assert_not user.save, "can not save a user when email format is not right"  
  end
end
