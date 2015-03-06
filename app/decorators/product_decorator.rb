class ProductDecorator < Draper::Decorator
  delegate_all

  def link_with_title_and_description
    h.link_to h.category_product_path(category, self) do
      "#{title} - '#{description}'"
    end
  end
end
