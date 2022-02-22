class ApplicationController < ActionController::API

  #skip_before_action :cors_set_access_control_headers, only: [:inicio]
  before_action :cors_set_access_control_headers, except: [:inicio]

	private
  	def cors_set_access_control_headers
	  #headers['Access-Control-Allow-Origin'] = '*'
	  #headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, OPTIONS, '
	  #headers['Access-Control-Allow-Headers'] = '*'
	  #headers['Access-Control-Max-Age'] = "1728000"

	  #Rails.logger.debug "==== #{request.to_json}"

		if ((request.headers["user"].nil? || request.headers["password"].nil?) || (request.headers["user"] != "User123" || request.headers["password"] != "Password123"))
			render json: {resultado: false, descripcion: "Debe Ingresar sus credenciales"}.to_json, status: 401
		end
	end

end