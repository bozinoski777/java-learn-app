class Mreport < ApplicationRecord
  belongs_to :user
  belongs_to :material, optional: true
end
