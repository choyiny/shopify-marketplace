class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy, :buy]

  # GET /products
  # Obtains a paginated list of products.
  #
  # Parameters:
  # available=1 : show products with available inventory. Default 0.
  # limit=n : show a maximum of `n` items. Default 10.
  # page=n : show the `n`th page of all products. Default 0.
  def index
    limit = params[:limit]&.to_i || 10
    page = params[:page]&.to_i || 0
    if params[:available] == "1"
      @products = Product.paginate(page, limit).available
    else
      @products = Product.paginate(page, limit)
    end
    render json: @products
  end

  # GET /products/1
  # Obtains details of a specific product.
  def show
    render json: @product
  end

  # POST /products/1/buy
  # Purchases a product in stock.
  def buy
    if @product.buy
      render json: {success: true, message: I18n.t("products.purchased")}
    else
      render json: {success: false, message: I18n.t("products.no_stock")}
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
