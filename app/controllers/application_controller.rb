class ApplicationController < ActionController::API
<<<<<<< HEAD
  include ActionController::Serialization
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  rescue_from ActiveRecord::RecordInvalid, with: :invalid
  rescue_from ActiveRecord::RecordNotUnique, with: :not_unique

  private

  def not_found(errors)
    render json: errors, status: :not_found
  end

  def invalid(errors)
    render json: errors, status: :unprocessable_entity
  end

  def not_unique(errors)
    render json: errors, status: :internal_server_error
  end
end
=======
    before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, 'yourSecret')
  end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      # header: { 'Authorization': 'Bearer <token>' }
      begin
        JWT.decode(token, 'yourSecret', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end
>>>>>>> 8802620d73c5f55fb978631e92d12330e1d0a2b7
