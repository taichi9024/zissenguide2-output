class ApplicationController < ActionController::Base
layout :set_layout

rescue_from StandardError , with: :r500

private def r500(e)
  render "errors/500", status:500
end

def set_layout
  if params[:controller].match(%r{\A(staff|admin|customer)/})
    Regexp.last_match[1]
  end
end

end
