class School < ApplicationRecord 
 has_many :students, dependent: :destroy
end