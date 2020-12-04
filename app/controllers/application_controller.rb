class ApplicationController < ActionController::Base
layout :set_layout

  def set_layout
    if params[:controller].match(%r{\A(staff|admin|customer)/})
      Regexp.last_match[1]
    end
  end
end
