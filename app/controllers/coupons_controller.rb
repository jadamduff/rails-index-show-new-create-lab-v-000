class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find(params[:id])
    @code = @coupon.coupon_code
    @store = @coupon.store
  end

  def create
    @coupon = Coupon.new(params)
    if @coupon.save
      redirect_to coupon_path(@coupon)
    end
  end
end
