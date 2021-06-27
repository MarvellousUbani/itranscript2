class UsersController < ApplicationController
    before_action :authenticate_user!, only: %i[show index]
    before_action :editable_user, only: %i[edit update]
    before_action :correct_user, only: [:show]
    after_action :send_welcome_email, only: %i[create]

    def index
      @users = User.all
    end
  

    def edit 
        @user = User.find(params[:id])
    end
    

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        #     render 'edit'
        # else
        #     render 'edit'
        # end
    end

    

    private
    def send_welcome_email 
        p 'user created'
    end

	def user_params
    	params.require(:user).permit(:application_status, :editable_status, :payment_status, :user_id)
    end

    # Confirms the correct user.
    def correct_user
        current_user.admin? 
    end

    def editable_user
        current_user.editable_status?
    end
end
