class AdminNotifierMailer < ApplicationMailer
	
  default :from => 'Booking Request <jessica@virtualnomads.com>'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_prospect_notifier(prospect)
    @prospect = prospect
    mail( :to => "jessica@virtualnomads.com",
    :subject => 'You have a new booking request!' )
  end
end
