class ProjectsController < ApplicationController

  def new
    @project=Project.new
  end

  def create
    @project =Project.create(project_params)
    if params[:project][:images]
      @project.images.attach(params[:project][:images])
    end
    redirect_to @project
  end

  def index
    @projects=Project.all
  end

  def show
    @project=Project.find(params[:id])
  end

  def edit
    @project=Project.find(params[:id])
  end

  def update
    @project=Project.find(params[:id])
    @project.update(project_params)
    if params[:project][:images]
      @project.images.attach(params[:project][:images])
    end
    redirect_to @project
  end

  def destroy
    @project=Project.find(params[:id]).destroy
    redirect_to root_url
  end

  def edit_project_images
    @project=Project.find(params[:id])
  end

  def delete_project_image
    @project=Project.find(params[:id])
    @image = ActiveStorage::Attachment.find(params[:image_id])
    @image.purge
    redirect_to edit_project_images_path(@project)
  end
  def delete_images
    @project=Project.find(params[:id])
    @project.images
  end

  def add_images
    @project=Project.find(params[:id])
    @project.images.attach(params[:images])
    redirect_to @project
  end
  private

  def project_params
    params[:project].permit(:name, :location, :description, :ptype)
  end

end
