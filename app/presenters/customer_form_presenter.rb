class CustomerFormPresenter < UserFormPresenter
    def gender_field
        markup (:div) do |m|
            m << label(:gender, "性別")
            m << text_field(:gender)
        end
    end
end