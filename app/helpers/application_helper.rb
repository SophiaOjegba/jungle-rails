module ApplicationHelper
  def format_currency(cents)
    Money.new(cents, 'USD').format
  end
end
