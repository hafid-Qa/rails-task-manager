# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :set_task, only: %i[show update edit]

  def index
    @tasks = Task.all
  end

  def show; end

  # create
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render :new, status: :unprocessable_entity
    end
  end
  # create

  # edit task
  def edit; end

  def update
    @task.update(task_params)
    redirect_to root_path(@task)
  end
  # edit task

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
  # end of class TasksController
end
