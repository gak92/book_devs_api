class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _options = {})
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'Signed Up Successfully', data: resource }
      }, status: :ok
    else
      render json: {
        status: { message: 'User could not be created', errors: resource.errors.full_messages }
        # status: :unprocessable_entity
      }
    end
  end
end
