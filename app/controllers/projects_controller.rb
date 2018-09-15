class ProjectsController < ApplicationController
before_action :authenticate_user! , except: [:show , :index]


  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.friendly.find(params[:id])
     end

  def create
    @project = Project.new(project_params)

    if @project.save
    redirect_to @project
    else
      render 'new'
    end
  end
   
  def update
    @project = Project.friendly.find(params[:id])
   
    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end
 
 
  def show
    @project = Project.friendly.find(params[:id])
  end

  def destroy
    @project = Project.friendly.find(params[:id])
    @project.destroy
   
    redirect_to projects_path
    
  end


end

private

def project_params
  params.require(:project).permit(:title, :text, {images: []} )
end

