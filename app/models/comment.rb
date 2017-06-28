class Comment < ApplicationRecord
  validates :positives, presence: true
  validates :negatives, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }

  belongs_to :user
  belongs_to :product
  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }

  after_create_commit { CommentUpdateJob.perform_later(self, @user) }
end
