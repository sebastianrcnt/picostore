module AuthHelper
    def get_current_user_id
        return session[:current_user_id]
    end

    def set_current_user_id(new_current_user_id)
        session[:current_user_id] = new_current_user_id
    end

    def destroy_user_session
        set_current_user_id nil
    end

    def get_current_user
        if get_current_user_id
            @user = User.find_by_id(get_current_user_id)
            if @user
                return @user
            else
                return nil
            end
        else
            return nil
        end
    end

    def is_logged_in
        if get_current_user
            return true
        else
            return false
        end
    end
end
