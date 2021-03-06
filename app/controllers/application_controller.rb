class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

protected

	def configure_permitted_parameters

		devise_parameter_sanitizer.permit(:sign_up) do |user_params|
		user_params.permit({ roles: [] }, :email, :password, :password_confirmation, :firstname, :lastname, :companyid, :roleid, :alternative_email, :startdate, :enddate, :monthly, :image)
		end
		devise_parameter_sanitizer.permit(:account_update) do |user_params|
		user_params.permit({ roles: [] }, :email, :password, :password_confirmation, :firstname, :lastname, :current_password, :companyid, :roleid, :alternative_email, :startdate, :enddate, :monthly, :image)
		end
	end


end