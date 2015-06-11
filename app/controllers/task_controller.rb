class TaskController < ApplicationController
  def show
  	project = Project.find(params[:project_id])
  	@tasks = project.tasks.order(:tag)
  	@task = @tasks.find(params[:id])
  end
end
