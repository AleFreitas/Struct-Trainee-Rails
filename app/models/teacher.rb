class Teacher < ApplicationRecord
    has_many :disciplines
    validates :name, :email, presence: true
    validates :email, uniqueness: true
end
