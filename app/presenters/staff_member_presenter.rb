class StaffMemberPresenter < ModelPresenter
    delegate :suspend? , to: :object

    def suspend_mark
        suspend? ? raw("&#x2611;") : raw("&#x2610;")
    end
end