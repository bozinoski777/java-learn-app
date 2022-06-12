class Freport < ApplicationRecord
  belongs_to :user
  belongs_to :flashcard, optional: true
end
