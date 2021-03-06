require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_page/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end

  test "signuo title" do
    get signup_path
    # assert_select "title", "Sign up | Ruby on Rails Tutorial Sample App"
    assert_select "title", full_title("Sign up")
  end
end
