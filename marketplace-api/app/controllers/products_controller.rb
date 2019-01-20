class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy, :buy]

  # GET /products
  #
  # Parameters:
  # available=1 : return products with available inventory. Default 0.
  # limit=n : return a maximum of `n` items. Default 10.
  # page=n : return the `n`th page of all products. Default 0.
  def index
    limit = params[:limit]&.to_i || 10
    page = params[:page]&.to_i || 0
    if params[:available] == "1"
      @products = Product.offset(page * limit).limit(limit).available
    else
      @products = Product.offset(page * limit).limit(limit)
    end
    render json: @products
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products/1/buy
  def buy
    if @product.inventory_count == 0
      render json: {success: false, message: I18n.t("products.no_stock")}
    else
      @product.decrement!(:inventory_count)
      render json: {success: true, message: I18n.t("products.purchased")}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:title, :price, :inventory_count)
    end
end
