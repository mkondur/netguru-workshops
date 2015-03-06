class ProductDecorator < Draper::Decorator
  delegate_all

  def link_with_title_and_description
    h.link_to(title, h.category_product_path(category, self)) + "- '#{description}'"
  end

  def edit_link
    h.link_to "[#{h.t('shared.edit')}]", h.edit_category_product_path(category, self)
  end
end
