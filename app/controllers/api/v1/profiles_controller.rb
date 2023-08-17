class Api::V1::ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
    render json: @profile
  end

  def create
    @profile = Profile.new(profile_params)
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
      params.require(:profile).permit(:name, :email, :lance_id, :self_infomation)
    end
end
