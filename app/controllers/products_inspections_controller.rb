class ProductsInspectionsController < ApplicationController
  before_action :authenticate_user!

  expose(:products_inspections)

  def index
  end

  def edit
    @products_inspection = ProductsInspection.find params[:id]
    @products_inspection.product_items
  end

  def new
    @products_inspection = ProductsInspection.new(user: current_user, date: Date.current)
    Product.all.each do |product|
      @products_inspection.product_items.build(product: product, total: 0, remainder: 0)
    end
  end

  def create
    @products_inspection = ProductsInspection.new(inspection_params)

    if @products_inspection.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def update
    @products_inspection = ProductsInspection.find params[:id]

    if @products_inspection.update_attributes(inspection_params)
      redirect_to action: :index
    else
      render :edit
    end
  end

  private

  def inspection_params
    params.require(:products_inspection).permit(:user_id, :date, :area_id, :product_items_attributes => [:id, :product_id, :total, :remainder])
  end
end
