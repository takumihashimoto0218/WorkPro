class Api::V1::ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update]
  before_action :set_tag, only: [:create]

  def show
    render json: @profile, methods: [:image_url]
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      render json: @profile,methods: [:image_url], status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def update
    if @profile.update(profile_params)
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :email, :lance_id, :self_infomation, :image)
  end

  def set_tag
    @tags = Tag.all
  end
end

