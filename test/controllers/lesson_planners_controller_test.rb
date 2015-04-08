require 'test_helper'

class LessonPlannersControllerTest < ActionController::TestCase
  setup do
    @lesson_planner = lesson_planners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lesson_planners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lesson_planner" do
    assert_difference('LessonPlanner.count') do
      post :create, lesson_planner: { classroom: @lesson_planner.classroom, end_time: @lesson_planner.end_time, group_name: @lesson_planner.group_name, start_time: @lesson_planner.start_time, teacher_name: @lesson_planner.teacher_name }
    end

    assert_redirected_to lesson_planner_path(assigns(:lesson_planner))
  end

  test "should show lesson_planner" do
    get :show, id: @lesson_planner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lesson_planner
    assert_response :success
  end

  test "should update lesson_planner" do
    patch :update, id: @lesson_planner, lesson_planner: { classroom: @lesson_planner.classroom, end_time: @lesson_planner.end_time, group_name: @lesson_planner.group_name, start_time: @lesson_planner.start_time, teacher_name: @lesson_planner.teacher_name }
    assert_redirected_to lesson_planner_path(assigns(:lesson_planner))
  end

  test "should destroy lesson_planner" do
    assert_difference('LessonPlanner.count', -1) do
      delete :destroy, id: @lesson_planner
    end

    assert_redirected_to lesson_planners_path
  end
end
