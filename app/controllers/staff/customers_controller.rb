class Staff::CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end

    def show
        @customer = Customer.find_by(id: params[:id])
    end

    def new
        @customer_form = Staff::CustomerForm.new
    end

    def edit
        @customer_form = Staff::CustomerForm.new(Customer.find(params[:id]))
    end
end
