class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :create]
  before_action :authenticate_admin!, only: [:update, :create, :edit, :new]

  expose(:categories)
  expose(:category)
  expose(:product) { Product.new }

  def create
    if category.save
      redirect_to category, notice: t('categories.notices.create')
    else
      render action: 'new'
    end
  end

  def update
    if category.update(category_params)
      redirect_to category, notice: t('categories.notices.update')
    else
      render action: 'edit'
    end
  end

  def destroy
    category.destroy
    redirect_to categories_url, notice: t('categories.notices.destroy')
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
