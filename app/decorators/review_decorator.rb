class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    return unless user.present?
    "#{user.first_name} #{user.last_name}"
  end
end
