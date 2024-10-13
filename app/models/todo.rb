class Todo < ApplicationRecord
    validates :item, presence: true
    validates :priority, presence: true
end
