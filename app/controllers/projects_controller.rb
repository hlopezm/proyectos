class ProjectsController < ApplicationController

  before_action :authenticate_user!, only: [:index, :new, :edit, :update, :destroy]
  before_action :set_project, only: [:edit, :update, :destroy]

  def index
     @q = Project.search(params[:q])
     @projects = @q.result(distinct: true)
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = current_user.projects.build
  end

  def create
    @project = current_user.projects.build(create_params)

    authorize @project

    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit
    authorize @project
  end

  def update
    authorize @project

    if @project.update update_params
      redirect_to @project, notice: "#{@project.name} updated"
    else
      render 'edit'
    end
  end

  def destroy
    authorize @project

    @project.destroy
    redirect_to projects_path, notice: "#{@project.name} was removed"
  end

  def today
    @projects = Project.for_today
    render 'index'
  end

  def next_week
    @projects = Project.next_week
    render 'index'
  end

  def mine
    if current_user
      @projects = current_user.projects
      render 'index'
    else
      redirect_to projects_path
    end
  end

  private

  def set_project
    @project = Project.find params[:id]
  end

  def create_params
    params.require(:project).permit(*policy(Project).new_permitted_attrs)
  end

  def update_params
    params.require(:project).permit(*policy(@project).edit_permitted_attrs)
  end
end
