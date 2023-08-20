class Api::V1::ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
    render json: @profile, methods: [:profile_image_url]
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.profile_image.attach(params[:profile_image])
    if @profile.save
      render json: @profile, status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end  
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      render json: @profile, status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end  
  end

  private
    def profile_params
      params.require(:profile).permit(:name, :email, :lance_id, :self_infomation, :profile_image)
    end
end
