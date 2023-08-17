module Api
  module V1
    class LancesController < ApplicationController
      def login
        lance = Lance.new(lance_params)

        if lance.save
          render json: { message: 'Registration successful' }
        else
          render json: { error: lance.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def lance_params
        params.permit(:email, :password, :password_confirmation)
      end
    end
  end
end
