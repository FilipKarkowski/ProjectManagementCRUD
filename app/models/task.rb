# app/models/user.rb
class User < ApplicationRecord
  has_many :assignments
  has_many :tasks, through: :assignments
end

# app/models/task.rb
class Task < ApplicationRecord
  has_many :assignments
  has_many :users, through: :assignments
  belongs_to :project
  def project_name
    project.name if project.present?
  end
end
