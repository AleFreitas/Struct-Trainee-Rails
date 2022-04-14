class Student < ApplicationRecord
    has_many :student_disciplines, dependent: :destroy
    has_many :disciplines, through: :student_disciplines
    has_many :teachers, through: :disciplines
    #lembrar que o has_many deve ser colocado manualmente
    validates :name, :registration, :age, presence: true
    validates :registration, uniqueness: true, length: { is: 8}
end
