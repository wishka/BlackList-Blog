require 'rails_helper'

RSpec.describe "static_pages", type: :request do
  describe "GET /index" do
    it "should get home" do
      get root_path
      assert_response :success
      assert_select "title", "Home | Blog with BlackList"
    end

    it "should get help" do
      get help_path
      assert_response :success
      assert_select "title", "Help | Blog with BlackList"
    end

    it "should get about" do
      get about_path
      assert_response :success
      assert_select "title", "About | Blog with BlackList"
    end

    it "should get contact" do
      get contact_path
      assert_response :success
      assert_select "title", "Contact | Blog with BlackList"
    end

    it "layout links" do
      get root_path
      assert_template 'static_pages/home'
      assert_select "a[href=?]", root_path, count: 1
      assert_select "a[href=?]", help_path
      assert_select "a[href=?]", about_path
      assert_select "a[href=?]", contact_path
    end
  end
end
