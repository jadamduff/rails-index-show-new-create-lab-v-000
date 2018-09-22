class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.find(params[:id])
  end

  def show

  end

  def create
    
  end
end
