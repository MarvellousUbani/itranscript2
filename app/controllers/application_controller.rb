class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters,
    
    if: :devise_controller?

        protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :upload, :first_name,:phone_number, :last_name, :street_address, :matriculation_number, :institution_sent,:department, :faculty, :senate_meeting_no, :date_of_award, :date_of_birth, :admin, :editable_status, :application_status])
            devise_parameter_sanitizer.permit(:account_update, keys:[:avatar, :upload, :first_name,:phone_number, :last_name, :street_address, :matriculation_number, :institution_sent, :admin, :editable_status, :application_status])
        end

        def after_sign_in_path_for(resource)
            dashboard_path
        end
         
end
