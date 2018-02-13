class  TasksController < ApplicationController
before_action :find_task, only: [:show, :edit, :update, :destroy]


  def index         # GET /restaurants
    @tasks = Task.all
  end

  def show          # GET /restaurants/:id

  end

  def new           # GET /restaurants/new
    @task = Task.new
  end

  def create        # POST /restaurants
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path

  end

  def edit          # GET /restaurants/:id/edit

  end

  def update
    @task.update(task_params)
    redirect_to task_path       # PATCH /restaurants/:id

  end

  def destroy       # DELETE /restaurants/:id
    @task.destroy
    redirect_to task_path
  end


private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

