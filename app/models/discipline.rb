class Discipline < ApplicationRecord
  has_many :students, through: :student_disciplines
  has_many :student_disciplines, dependent: :destroy
  belongs_to :teacher
  validates :name, :code, presence: true
  validates :code, length: { is: 1}
  validates :code, uniqueness: { scope: [:name]}
end
