class OrdersController < ApplicationController
    before_action :authenticate_user!
    def index
      @orders = Order.user_related(current_user)
    end

    def show
      @order = Order.find(params[:id])
    end

    def new
    end

    def create
    end

    def destroy
    end
  end
