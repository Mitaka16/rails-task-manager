class TasksController < ApplicationController
  before_action :set_tasks, only: [:show, :update, :edit, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    set_tasks
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(restaurant_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit
    set_tasks
  end

  def update
    set_tasks
    @task.update(restaurant_params)

    redirect_to task_path(@task)
  end

  def destroy
    set_tasks
    @task.destroy

    redirect_to tasks_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_tasks
    @task = Task.find(params[:id])
  end
end
