class UserDecorator < Draper::Decorator
  delegate_all

  def humanize_name
    "#{first_name} #{last_name}"
  end
end
