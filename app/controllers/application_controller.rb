class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :prepare_meta_tags, if: "request.get?"
  
  def prepare_meta_tags(options={})
    site_name   = "Virtual Nomads"
    title       = [controller_name, action_name].join(" ")
    description = "Serving You Value & Inspiration Through Travel"
    current_url = request.url

    # Let's prepare a nice set of defaults
    defaults = {
      site:        site_name,
      title:       title,
      description: description,
      keywords:    %w[travel blog destinations],
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end
end
