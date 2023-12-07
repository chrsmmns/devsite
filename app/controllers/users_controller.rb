class UsersController < ApplicationController
   def login_form
   end
   def login
      begin
         user = User.find_by(email: params[:email])
         if user.authenticate(params[:password])
            session[:user_id] = user.id
            flash[:alert] = "Welcome, #{user.name}!"
            redirect_to root_path
         else
            flash[:error] = "Sorry, bad credentials."
            render :login_form
         end
      rescue StandardError => e
         flash[:error] = "Sorry, please try again."
         render :login_form
      end
   end

   def logout
      reset_session
      redirect_to root_path
   end


private
   def user_params
      params.require(:user).permit(:username, :password)
   end
end