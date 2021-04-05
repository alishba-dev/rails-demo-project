class SessionsController < ApplicationController
  def create
    new_user = NewUser
              .find_by(email: params['new_user']['email'])
              .try(:authenticate, params['new_user']['password'])
    if new_user
      session[:user_id] = new_user.id
      render json:{
        status: :created,
        logged_in: true,
        new_user: new_user
      }
    else
      render json:{ status: 401}
    end
  end
end
