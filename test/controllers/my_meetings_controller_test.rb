require 'test_helper'

class MyMeetingsControllerTest < ActionController::TestCase
  setup do
    @my_meeting = my_meetings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_meetings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_meeting" do
    assert_difference('MyMeeting.count') do
      post :create, my_meeting: { create_at: @my_meeting.create_at, datetime: @my_meeting.datetime, datetime: @my_meeting.datetime, datetime: @my_meeting.datetime, details: @my_meeting.details, integer: @my_meeting.integer, name: @my_meeting.name, note: @my_meeting.note, place: @my_meeting.place, start_time: @my_meeting.start_time, string: @my_meeting.string, string: @my_meeting.string, string: @my_meeting.string, string: @my_meeting.string, update_at: @my_meeting.update_at, user_id: @my_meeting.user_id }
    end

    assert_redirected_to my_meeting_path(assigns(:my_meeting))
  end

  test "should show my_meeting" do
    get :show, id: @my_meeting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_meeting
    assert_response :success
  end

  test "should update my_meeting" do
    patch :update, id: @my_meeting, my_meeting: { create_at: @my_meeting.create_at, datetime: @my_meeting.datetime, datetime: @my_meeting.datetime, datetime: @my_meeting.datetime, details: @my_meeting.details, integer: @my_meeting.integer, name: @my_meeting.name, note: @my_meeting.note, place: @my_meeting.place, start_time: @my_meeting.start_time, string: @my_meeting.string, string: @my_meeting.string, string: @my_meeting.string, string: @my_meeting.string, update_at: @my_meeting.update_at, user_id: @my_meeting.user_id }
    assert_redirected_to my_meeting_path(assigns(:my_meeting))
  end

  test "should destroy my_meeting" do
    assert_difference('MyMeeting.count', -1) do
      delete :destroy, id: @my_meeting
    end

    assert_redirected_to my_meetings_path
  end
end
