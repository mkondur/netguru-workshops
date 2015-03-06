class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    return unless user.present?
    "#{user.first_name} #{user.last_name}"
  end

  def formatted_record
    "#{h.truncate(content, length: 20)} (#{created_at.strftime("%d-%m-%Y")})"
  end
end
