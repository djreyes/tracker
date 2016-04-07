module ApplicationHelper
  def toggle_sort_priority(direction)
    'asc' == direction ? 'desc' : 'asc'
  end
end
