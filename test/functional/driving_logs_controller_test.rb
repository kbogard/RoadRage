require 'test_helper'

class DrivingLogsControllerTest < ActionController::TestCase
  setup do
    @driving_log = driving_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:driving_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create driving_log" do
    assert_difference('DrivingLog.count') do
      post :create, driving_log: { Comments: @driving_log.Comments, Drive_Date: @driving_log.Drive_Date, Driving_Time: @driving_log.Driving_Time, Night_Driving: @driving_log.Night_Driving, Verifiers_Initials: @driving_log.Verifiers_Initials }
    end

    assert_redirected_to driving_log_path(assigns(:driving_log))
  end

  test "should show driving_log" do
    get :show, id: @driving_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @driving_log
    assert_response :success
  end

  test "should update driving_log" do
    put :update, id: @driving_log, driving_log: { Comments: @driving_log.Comments, Drive_Date: @driving_log.Drive_Date, Driving_Time: @driving_log.Driving_Time, Night_Driving: @driving_log.Night_Driving, Verifiers_Initials: @driving_log.Verifiers_Initials }
    assert_redirected_to driving_log_path(assigns(:driving_log))
  end

  test "should destroy driving_log" do
    assert_difference('DrivingLog.count', -1) do
      delete :destroy, id: @driving_log
    end

    assert_redirected_to driving_logs_path
  end
end
