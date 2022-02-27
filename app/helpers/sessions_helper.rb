module SessionsHelper
# вход позьзлвателя
    def log_in(user)
    session[:user_id] = user.id
    end

#возврат пользователя если он есть
    def current_user 
    @current_user ||= User.find_by(id: session[:user_id])
    end
#возвращает true если пользователь вошел
    def logget_in?
        !current_user.nil?
    end
end
