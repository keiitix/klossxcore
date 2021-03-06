class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :writername] )
        # 登録時も必要であればsign_upを追加
        devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :writername] )
    end
end
