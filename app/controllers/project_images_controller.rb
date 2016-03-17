class ProjectImagesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :create, :new, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def show
    @image = ProjectImage.find(params[:id])
  end

  def create
    @image = ProjectImage.new(image_params)
    unique_token = request.headers['Unique-Token']
    @image.unique_token = unique_token

    respond_to do |format|
      if @image.save
        format.html { redirect_to @image, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:project_image).permit(:screenshot, :project_id, :unique_token)
    end
end
