class ProjectsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy, :edit_project_images, :delete_project_image, :delete_images]

  def new
    @project=Project.new
  end

  def create
    @project =Project.new(project_params)
    if params[:project][:images]
      @project.images.attach(params[:project][:images])
    end

    if @project.save
      flash[:notice]= "The Project was Successfully created"
      redirect_to @project
    else
      render 'new'
    end
  end

  def index
    @projects= admin_signed_in? ? Project.all : Project.where(:published => true)
  end

  def show
    @project=Project.find(params[:id])
  end

  def edit
    @project=Project.find(params[:id])

  end

  def update
    @project=Project.find(params[:id])
    if @project.update(project_params)
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
    else
      render 'edit'
    end
  end

  def destroy
    @project=Project.find(params[:id]).destroy
    redirect_to projects_url
  end


  private

  def project_params
    params[:project].permit(:name, :location, :description, :ptype, :featured, :published, features_attributes: [:id, :image, :description, :_destroy])
  end

end
