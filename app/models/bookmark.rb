class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 5 }
  validates_uniqueness_of :list, scope: :movie
end
