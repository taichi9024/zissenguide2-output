class ApplicationController < ActionController::Base
layout :set_layout

class IpAddressRejected < ActionController::ActionControllerError; end

# include CustomError

def set_layout
  if params[:controller].match(%r{\A(staff|admin|customer)/})
    Regexp.last_match[1]
  end
end

end
