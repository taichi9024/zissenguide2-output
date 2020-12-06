class FormPresenter
    include HtmlBuilder

    attr_reader :form_builder, :view_context
    delegate :label, :text_field, :date_field, :password_field, :checkbox, :object, to: :form_builder

    def initialize(form_builder, view_context)
        @form_builder = form_builder
        @view_context = view_context
    end
end
