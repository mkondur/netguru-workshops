class ReviewsController < ApplicationController
  expose(:review, attributes: :review_params)
  expose(:product)

  def create
    if review.save
      redirect_to category_product_url(product.category, product), notice: t('reviews.notices.create')
    else
      redirect_to edit_category_product_path(product.category, product)
    end
  end

  def destroy
    review.destroy
    redirect_to category_product_url(product.category, product), notice: t('reviews.notices.destroy')
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating).merge(user_id: current_user.id, product_id: product.id)
  end
end