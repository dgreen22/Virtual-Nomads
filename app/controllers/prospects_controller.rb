class ProspectsController < ApplicationController

	def new
		@prospect = Prospect.new

		set_meta_tags title: "Create Your Booking Now",
                	  keywords: "Book_travel Travel_vacations Book_your_vacation",
                	  description: "Blogposts providing travel inspiration"	
	end

	def create
		@prospect = Prospect.new(prospect_params)
		respond_to do |format|
			if @prospect.save
			  flash[:success] = "Thank you for your interest in booking! We'll be in touch shortly."
			  AdminNotifierMailer.send_prospect_notifier(@prospect).deliver
			  format.html { redirect_to new_prospect_path }
	          format.json { render :new, location: new_prospect_path }
	        else
	          format.html { render :new }
	          format.json 
	        end
		end

	end

	def prospect_params
		params.require(:prospect).permit(:email, :first_name, :last_name, :phone, :mailing_address, :question_1, :question_2)
	end
end