class Book < ApplicationRecord
    belongs_to :user
    validates :title, presence: true,
                        length: {minimum: 4}
end
