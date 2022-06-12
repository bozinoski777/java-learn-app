class Material < ApplicationRecord
    has_many :reportcards
    has_many :mreports
    has_many :freports
end
