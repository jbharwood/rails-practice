module Api
  module V1

    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :update, :destroy]

      # GET /users
      def index
        @users = User.all

        render json: @users
      end

      # GET /users/1
      def show
        render json: @user
      end

      # POST /users
      def create
        user = User.new(
    			username: params[:username],
    			password: params[:password]
    		)

    		if user.save
    			# JWT.encode(payload, 'secret')
    			jwt = encode_token({user_id: user.id})
          byebug

    			render json: {user: user, jwt: jwt}
    		else
    			render json: {errors: user.errors.full_messages}
    		end
      end

      # def create
      #   @user = User.create(user_params)
      #   if @user.valid?
      #     render json: { user: UserSerializer.new(@user) }, status: :created
      #   else
      #     render json: { error: 'failed to create user' }, status: :not_acceptable
      #   end
      # end

      # def create
      #   @user = User.new(user_params)
      #
      #   if @user.save
      #     render json: @user, status: :created, location: @user
      #   else
      #     render json: @user.errors, status: :unprocessable_entity
      #   end
      # end

      # PATCH/PUT /users/1
      def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # DELETE /users/1
      def destroy
        @user.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          @user = User.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def user_params
          params.require(:user).permit(:username, :password)
        end
    end
  end
end
