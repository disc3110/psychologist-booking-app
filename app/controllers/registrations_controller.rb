class RegistrationsController < Devise::RegistrationsController
    include RackSessionFix
    
    respond_to :json
end
