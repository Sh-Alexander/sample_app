require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create!(name: "Example User", email: "user@example.com",
            password: "foobar", password_confirmation: "foobar")
  end

  test "login with valid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: {session: {email: "user@example.com", password: "foobar"}}
    assert_redirected_to user_path(@user)
  end

  test "login with invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: {session: {email: "", password: ""}}
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
