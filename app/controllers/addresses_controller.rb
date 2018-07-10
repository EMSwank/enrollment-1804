class AddressesController < ApplicationController
  def new
    @address = Address.new
  end

  def create
    @student = Student.find(params[:id])
    @address = Address.create(address_params)
    redirect_to student_path(@student)
  end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :zip_code)
  end
end
