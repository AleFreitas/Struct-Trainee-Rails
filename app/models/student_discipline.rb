class StudentDiscipline < ApplicationRecord
  belongs_to :student
  belongs_to :discipline
  validates :discipline_id, uniqueness: { scope: [:student_id]}
  #garante que um aluno não esteja em duas materias ao mesmo tempo
end
