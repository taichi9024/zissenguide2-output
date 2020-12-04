module CustomError
    extend ActiveSupport::Concern

    included do
        rescue_from StandardError , with: :r500
        rescue_from ApplicationController::IpAddressRejected, with: :r404
        
    end

    private def r500(e)
        render "errors/500", status:500
    end

    private def r404(e)
        render "errors/404", status:404
    end
end