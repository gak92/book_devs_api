class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _options = {})
    render json: {
      status: { code: 200, message: 'User signed in Successfully', data: current_user }
    }, status: :ok
  end

  def respond_to_on_destroy
    # jwt_payload = JWT.decode(request.headers['Authorization'].split(' ')[1],
    # '029accbd11fae5d8e1a42fc158fe4716e9121e72aa8c1bb073db336771395fe2616c3b
    # 501e14c97e7a32f8247bb9c670af264f1fad479d9f39456bc8649af669').first
    jwt_payload = JWT.decode(request.headers['Authorization'].split[1], Rails.application.secret_key_base).first
    current_user = User.find(jwt_payload['sub'])
    if current_user
      render json: {
        status: 200,
        message: 'Signed out Successfully'
      }, status: :ok
    else
      render json: {
        status: 401,
        message: 'User has no active session'
      }, status: :unauthorized
    end
  end

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
