class OrdersController < ApplicationController
  before_action :authenticate_user! , except:  [:index ,:show]

  def index
   @orders = Order.all
  end

  def done
   @orders = Order.all
  end

  def new
   @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
   @order = Order.find(params[:id])
  end

  def edit
   @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to root_path
    else
      render :edit
    end
  end
end

private

def order_params
  params.require(:order).permit(:order_number ,:name , :tel ,:postal, :address, :product, :delivery_date, :driver_id,:text,:ampm_id).merge(apointer: current_user.nickname )
end
