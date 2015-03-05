class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:destroy, :update, :create, :edit]
  before_action :authenticate_owner!, only: [:edit, :update]

  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  def create
    if product.save
      category.products << product
      redirect_to category_product_url(category, product), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if product.update(product_params)
      redirect_to category_product_url(category, product), notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    product.destroy
    redirect_to category_url(product.category), notice: 'Product was successfully destroyed.'
  end

  private

  def authenticate_owner!
    return if owner?
    redirect_to category_product_url(category, product)
    flash[:error] = 'You are not allowed to edit this product.'
  end

  def owner?
    product.user == current_user
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id)
  end
end