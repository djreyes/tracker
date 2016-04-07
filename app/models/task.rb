class Task < ActiveRecord::Base
  belongs_to :owner, foreign_key: :assigned_to_id, class_name: 'User'

  delegate :name, :email, to: :owner, prefix: true

  validates :priority, numericality: { greater_than: 0, less_than_or_equal_to: 5 }
end
