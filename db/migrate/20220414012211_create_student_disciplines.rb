class CreateStudentDisciplines < ActiveRecord::Migration[7.0]
  def change
    create_table :student_disciplines do |t|
      t.references :student, null: false, foreign_key: true
      t.references :discipline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
