class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new

  end

  def show

  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    if @coupon.save
      redirect_to coupon_path(@coupon)
    end
  end
end
