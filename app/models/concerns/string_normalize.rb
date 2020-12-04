require "nkf"

module StringNormalize
    extend ActiveSupport::Concern

    def normalize(text)
        NKF.nkf("-W -w -Z1", text).strip if text
    end
end 