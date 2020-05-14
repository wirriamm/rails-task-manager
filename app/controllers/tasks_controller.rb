class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @status = @task.completed ? 'completed' : 'not completed yet'
  end
end
