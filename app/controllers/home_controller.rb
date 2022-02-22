
class HomeController < ApplicationController
	def inicio
		#render "inicio"
		render file: Rails.root.join('public', 'index.html')
	end
end
