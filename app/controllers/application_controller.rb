class ApplicationController < ActionController::Base
#devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合、その前にconfigure_permitted_parametersが実行されます。
before_action :configure_permitted_parameters,if: :devise_controller?
   before_action :configure_permitted_parameters, if: :devise_controller?
protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

private
#nameで入るようにするときに追加した
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
end
end
