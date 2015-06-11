class TaskController < ApplicationController
  def show
  	project = Project.find(params[:project_id])
  	@tasks = project.tasks.order(:tag)
  	@task = @tasks.find(params[:id])

  	@next_task = @task.next
  	@prev_task = @task.prev
  end


end
