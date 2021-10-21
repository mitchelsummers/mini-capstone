class SuppliersController < ApplicationController
  def index
    all_suppliers = Supplier.all
    render json: all_suppliers
  end

  def create
    supplier = Supplier.new(
      name: params["name"], 
      email: params["email"], 
      phone_number: params["phone_number"] 
    )
    if supplier.save
      render json: supplier
    else
      render json: {errors: supplier.errors.full_messages}, status: 406 
    end
  end

  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params["name"] || supplier.name
    supplier.email = params["email"] || supplier.email
    supplier.phone_number = params["phone_number"] || supplier.phone_number
    if supplier.save
      render json: supplier
    else
      render json: {errors: supplier.errors.full_messages}, status: 406 
    end
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy
    render json: {message: "supplier destroyed"}
  end
  
end
