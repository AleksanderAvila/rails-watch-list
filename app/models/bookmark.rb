class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # validates :movie, :list, uniqueness: true
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }
end
