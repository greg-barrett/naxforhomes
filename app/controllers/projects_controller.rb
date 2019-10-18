class ProjectsController < ApplicationController
  before_action :authenticate_admin!, only: [:edit, :update, :destroy, :edit_project_images, :delete_project_image, :delete_images]

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
    #delete unwanted images from project within edit
    if params[:image_ids]
      params[:image_ids].each do |key, value|
        @image = ActiveStorage::Attachment.find(key)
        @image.purge
      end
    end
    redirect_to @project
  end

  def destroy
    @project=Project.find(params[:id]).destroy
    redirect_to root_url
  end


  private

  def project_params
    params[:project].permit(:name, :location, :description, :ptype, features_attributes: [:id, :image, :description, :_destroy])
  end

end
