# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :set_task, only: %i[show update]
  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create; end

  private

  def set_task
    @task = Task.find(params[:id])
  end
  # end of class TasksController
end
