# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
12.times do |i|
    Student.create!(name: "Student#{i+1}", registration: rand(10**7...10**8), age: rand(18..60))
end

6.times do |i|
    Teacher.create!(name: "Teacher#{i+1}", email: "teacher#{i+1}@unb.br")
end

Discipline.create!(name: 'Calculo 1', code:'A', teacher_id: 1)
Discipline.create!(name: 'Fisica 1', code:'A', teacher_id: 3)
Discipline.create!(name: 'Quimica 1', code:'A', teacher_id: 2)
Discipline.create!(name: 'Calculo 1', code:'C', teacher_id: 2)
Discipline.create!(name: 'Calculo 1', code:'B', teacher_id: 3)
Discipline.create!(name: 'APC', code:'D', teacher_id: 1)

StudentDiscipline.create!(student_id: 1, discipline_id: 1)
StudentDiscipline.create!(student_id: 2, discipline_id: 1)
StudentDiscipline.create!(student_id: 2, discipline_id: 4)
StudentDiscipline.create!(student_id: 3, discipline_id: 4)
StudentDiscipline.create!(student_id: 1, discipline_id: 2)
StudentDiscipline.create!(student_id: 4, discipline_id: 6)
StudentDiscipline.create!(student_id: 3, discipline_id: 5)
StudentDiscipline.create!(student_id: 1, discipline_id: 3)