class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    "#{user.first_name} #{user.last_name}"
  end
end
