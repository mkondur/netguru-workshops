class ReviewsController < ApplicationController
  expose(:review)
  expose(:product)

  def create
    if review.save
      product.reviews << review
      redirect_to category_product_url(product.category, product), notice: 'Review was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: 'Review was successfully destroyed.'
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
