json.array!(@lesson_planners) do |lesson_planner|
  json.extract! lesson_planner, :id, :group_name, :teacher_name, :classroom, :start_time, :end_time
  json.url lesson_planner_url(lesson_planner, format: :json)
end
