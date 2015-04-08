class CreateLessonPlanners < ActiveRecord::Migration
  def change
    create_table :lesson_planners do |t|
      t.string :group_name
      t.string :teacher_name
      t.string :classroom
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
