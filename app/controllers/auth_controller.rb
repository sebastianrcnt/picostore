class AuthController < ApplicationController
    include AuthHelper
    def login
    end

    def sign_up
        flash[:info] = "Sign Up Page"
    end

    def create_user_with_email_and_password
        @data = params.require(:email_user).permit(:name, :email, :password)
        if params[:email_user][:password] != params[:email_user][:password_again]
            flash[:error] = "패스워드가 일치하지 않습니다"
            redirect_to action: :sign_up
            return
        end

        @user = User.new(@data)
        @user.authentication_strategy_type = :email_and_password
        if @user.save
            redirect_to root_path
        else
            flash[:error] = @user.errors
            redirect_to action: :sign_up
        end
    end

    def login_user_with_email_and_password
        @data = params.require(:email_user).permit(:email, :password)
        @user = User.find_by_email(@data[:email])
        if @user.password == @data[:password]
            set_current_user_id @user.id
            redirect_to :root
        else
            flash[:error] = "인증 정보가 틀립니다1"
            redirect_to action: :login
        end
    end

    def logout
        destroy_user_session
        redirect_to :root
    end

    def get_session
        @data = session.to_h
    end
end
