require 'test_helper'

class CalendarPagesControllerTest < ActionController::TestCase
  setup do
    @calendar_page = calendar_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calendar_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calendar_page" do
    assert_difference('CalendarPage.count') do
      post :create, calendar_page: { id_meeting: @calendar_page.id_meeting, integer: @calendar_page.integer }
    end

    assert_redirected_to calendar_page_path(assigns(:calendar_page))
  end

  test "should show calendar_page" do
    get :show, id: @calendar_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calendar_page
    assert_response :success
  end

  test "should update calendar_page" do
    patch :update, id: @calendar_page, calendar_page: { id_meeting: @calendar_page.id_meeting, integer: @calendar_page.integer }
    assert_redirected_to calendar_page_path(assigns(:calendar_page))
  end

  test "should destroy calendar_page" do
    assert_difference('CalendarPage.count', -1) do
      delete :destroy, id: @calendar_page
    end

    assert_redirected_to calendar_pages_path
  end
end
