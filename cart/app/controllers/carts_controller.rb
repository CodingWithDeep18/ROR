class CartsController < ApplicationController
  def index
    @cart = session[:cart]
  end

  def add_to_cart
    product_id = params[:product_id]
    cart = session[:cart] || {}
    cart[product_id] = (cart[product_id] || 0) + 1
    session[:cart] = cart
    redirect_to carts_path
  end 

  def remove_from_cart
    product_id = params[:product_id]
    cart = session[:cart] || {}
    # cart[product_id] = (cart[product_id]) - 1
    # if cart[product_id] <= 0
    cart.delete(product_id)
    session[:cart] = cart
    redirect_to root_path
    # end
  end
end