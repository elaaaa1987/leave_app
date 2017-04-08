require 'test_helper'

class LeaveAppliesControllerTest < ActionController::TestCase
  setup do
    @leave_apply = leave_applies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leave_applies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leave_apply" do
    assert_difference('LeaveApply.count') do
      post :create, leave_apply: { end_date: @leave_apply.end_date, leave_type: @leave_apply.leave_type, reason: @leave_apply.reason, session_name: @leave_apply.session_name, start_date: @leave_apply.start_date, status: @leave_apply.status }
    end

    assert_redirected_to leave_apply_path(assigns(:leave_apply))
  end

  test "should show leave_apply" do
    get :show, id: @leave_apply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leave_apply
    assert_response :success
  end

  test "should update leave_apply" do
    patch :update, id: @leave_apply, leave_apply: { end_date: @leave_apply.end_date, leave_type: @leave_apply.leave_type, reason: @leave_apply.reason, session_name: @leave_apply.session_name, start_date: @leave_apply.start_date, status: @leave_apply.status }
    assert_redirected_to leave_apply_path(assigns(:leave_apply))
  end

  test "should destroy leave_apply" do
    assert_difference('LeaveApply.count', -1) do
      delete :destroy, id: @leave_apply
    end

    assert_redirected_to leave_applies_path
  end
end
