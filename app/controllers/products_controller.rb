class ProductsController < ApplicationController
  def index
    @products = @paginate = Product.all.paginate(page: params[:page], per_page: 8).order(id: :desc)
  end
end
