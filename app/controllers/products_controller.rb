class ProductsController < ApplicationController
  def index
    @products = @paginate = Product.all.paginate(page: params[:page], per_page: 8).order(id: :desc)
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
