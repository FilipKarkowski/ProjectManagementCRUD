class User < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :tasks, through: :assignments

  before_destroy :clear_assignments

  private

  def clear_assignments
    self.assignments.destroy_all
  end
end
