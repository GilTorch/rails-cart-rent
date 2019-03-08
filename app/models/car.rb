class Car < ApplicationRecord
    belongs_to :classification 
    belongs_to :brand
    belongs_to :user 
end