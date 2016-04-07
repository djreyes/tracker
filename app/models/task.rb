class Task < ActiveRecord::Base
  belongs_to :owner, foreign_key: :assigned_to_id, class_name: 'User'
end
