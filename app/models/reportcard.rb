class Reportcard < ApplicationRecord
  belongs_to :user
  belongs_to :material, optional: true
  belongs_to :flashcard, optional: true
end
