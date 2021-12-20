require 'rails_helper'

RSpec.describe "static_pages", type: :request do
  describe "GET /index" do
    it "should get home" do
      get static_pages_home_path
      assert_response :success
      assert_select "title",
"Blog with BlackList"
    end

    it "should get help" do
      get static_pages_help_path
      assert_response :success
      assert_select "title",
"Blog with BlackList"
    end

    it "should get about" do
      get static_pages_about_path
      assert_response :success
      assert_select "title",
"Blog with BlackList"
    end
  end
end
