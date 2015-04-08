class LessonPlannersController < ApplicationController
  before_action :set_lesson_planner, only: [:show, :edit, :update, :destroy]

  # GET /lesson_planners
  # GET /lesson_planners.json
  def index
    @lesson_planners = LessonPlanner.all
  end

  # GET /lesson_planners/1
  # GET /lesson_planners/1.json
  def show
  end

  # GET /lesson_planners/new
  def new
    @lesson_planner = LessonPlanner.new
  end

  # GET /lesson_planners/1/edit
  def edit
  end

  # POST /lesson_planners
  # POST /lesson_planners.json
  def create
    @lesson_planner = LessonPlanner.new(lesson_planner_params)

    respond_to do |format|
      if @lesson_planner.save
        format.html { redirect_to @lesson_planner, notice: 'Lesson planner was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_planner }
      else
        format.html { render :new }
        format.json { render json: @lesson_planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_planners/1
  # PATCH/PUT /lesson_planners/1.json
  def update
    respond_to do |format|
      if @lesson_planner.update(lesson_planner_params)
        format.html { redirect_to @lesson_planner, notice: 'Lesson planner was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_planner }
      else
        format.html { render :edit }
        format.json { render json: @lesson_planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_planners/1
  # DELETE /lesson_planners/1.json
  def destroy
    @lesson_planner.destroy
    respond_to do |format|
      format.html { redirect_to lesson_planners_url, notice: 'Lesson planner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_planner
      @lesson_planner = LessonPlanner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_planner_params
      params.require(:lesson_planner).permit(:group_name, :teacher_name, :classroom, :start_time, :end_time)
    end
end
