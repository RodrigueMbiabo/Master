class Category < ApplicationRecord

    has_many :calculations

    validates :title, presence: true, uniqueness: true
end