class ProjectController < ApplicationController
  def index
  	@projects = Project.all
  end

  def show
  	@project = Project.find(params[:id])
  	@tasks =  @project.tasks
  end
end
