class VendorBookingsController < ApplicationController
  before_action :set_vendor_booking, only: [:show, :edit, :update, :destroy]

  def index
    @vendor_bookings = VendorBooking.all
  end

  def show
  end

  def new
    @vendor_booking = VendorBooking.new
  end

  def create
    @vendor_booking = VendorBooking.new(vendor_booking_params)
    if @vendr_booking.save
      redirect_to @vendor_booking, notice: 'Vendor booking was successfully created'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @vendor_booking.update(vendor_booking_params)
      redirect_to @vendor_booking, notice: 'Vendor booking was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @vendor_booking.destroy
    redirect_to vendor_bookings_url, notice: 'Vendor booking successfully destroyed'
  end



  private

  def set_vendor_booking
    @vendor_booking = VendorBooking.find(params[:id])
  end

  def vendor_booking_params
    params.require(:vendor_booking).permit(:vendor_id, :event_id)
  end
end
