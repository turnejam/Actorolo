class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user

    if @project.save
      flash[:notice] = "Project Saved"
      redirect_to @project
    else
      flash.now[:alert] = "There was an error saving the project."
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.assign_attributes(project_params)

    if @project.save
      flash[:notice] = "Project Saved"
      redirect_to @project
    else
      flash.now[:alert] = "There was an error saving the project."
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])

    if @project.destroy
      flash[:notice] = "\"#{@project.title}\" was deleted successfully."
      redirect_to action: :index
    else
      flash.now[:alert] = "There was an error deleting the project."
      render :show
    end
  end

  def index
    @projects = Project.where(user: current_user)
  end

  def show
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :notes, :date, :category, :user, :user_ids, contact_ids:[])
  end
end
