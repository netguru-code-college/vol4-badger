class ResourcesController < ApplicationController

  def index
    @resources = Resource.where(course_id: params[:course_id])
  end

  def show
    @resource = Resource.find(params[:id])
    @attachment = Resource.new(course_id: id)
  end

  def create
    @resource = Resource.new(params.require(:resource).permit(:title, :link, :completed, :type))
    @course_id = @resource.course_id

    if @resource.save
      redirect_to '/courses'+@course_id.to_s+'/show'
    else
      render :new
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])

    if @resource.update(resource)
      redirect_to @resource
    else
    render 'edit'
  end
  end

  def delete
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy

    redirect_to resources_path
  end

  private
  def resource_params
    params.require(:resource).permit(:title, :link, :completed, :type)
  end
end

