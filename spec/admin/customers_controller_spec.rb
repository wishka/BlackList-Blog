require 'rails_helper'

class Admin::CustomersControllerTest < ActionController::TestCase
  describe "admin/customers" do
    it "new" do
      get :new
      assert_response :success
    end
  end
end
