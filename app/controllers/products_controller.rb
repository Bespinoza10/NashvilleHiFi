class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params

    if @product.save
      redirect_to @product, notice: "New Product created!"
    else
      render 'new', notice: "Sorry failed to create!!!"
    end
  end

  def edit
  end

  def update
    if @product.update product_params
      redirect_to @product, notice: "You Updated: #{@product.name}."
    else
      render 'edit'
    end
  end

  def show
    @products = Product.all
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :small_img, :big_img_one, :big_img_two, :product_type, :color)
  end

  def find_product
    @product = Product.find(params[:id])
  end 

end
