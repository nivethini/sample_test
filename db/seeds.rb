# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# School.all.each do |school|
# 	school.destroy!
# end

# Standard.all.each do |standard|
# 	standard.destroy!
# end

# Section.all.each do |section|
# 	section.destroy!
# end

Student.all.each do |student|
	student.destroy!
end

Teacher.all.each do |teacher|
	teacher.destroy!
end

Subject.all.each do |subject|
	subject.destroy!
end

StudentAttendance.all.each do |attendance|
	attendance.destroy!
end

Exam.all.each do |exam|
	exam.destroy!
end

Mark.all.each do |mark|
	mark.destroy!
end

Result.all.each do |result|
	result.destroy!
end

# school = School.create({name: 'Mahatma', address: 'abc'})
# school = School.create({name: 'TVS', address: 'def'})

# standard = Standard.create({category: '1', school_id: School.id })
# standard = Standard.create({category: '2',school_id: school.id })
student = Student.create({first_name: 'anitha',last_name: 'chandrasekar', address: 'avadi', section_id: 45})
student = Student.create({first_name: 'aravindh',last_name: 'kumar', address: 'guindy', section_id: 45})
student = Student.create({first_name: 'arun',last_name: 'mozhi', address: 'vadapalani', section_id: 45})

student = Student.create({first_name: 'mufsira',last_name: 'syed', address: 'velachery', section_id: 41})
student = Student.create({first_name: 'dharmesh',last_name: 'ravichander', address: 'avadi', section_id: 41})
student = Student.create({first_name: 'deepiga',last_name: 'senthivel', address: 'porur', section_id: 41})

student = Student.create({first_name: 'divya',last_name: 'ramadoss', address: 'velachery', section_id: 36 })
student = Student.create({first_name: 'archana',last_name: 'kathiresan', address: 'guindy', section_id: 36})
student = Student.create({first_name: 'arthy',last_name: 'venkat', address: 'mylapore', section_id: 36})


attendance = StudentAttendance.create({is_active: 'true',student_id: 1})
attendance = StudentAttendance.create({is_active: 'true',student_id: 2})
attendance = StudentAttendance.create({is_active: 'true',student_id: 3})

attendance = StudentAttendance.create({is_active: 'true',student_id: 4})
attendance = StudentAttendance.create({is_active: 'true',student_id: 5})
attendance = StudentAttendance.create({is_active: 'true',student_id: 6})

attendance = StudentAttendance.create({is_active: 'false',student_id: 7})
attendance = StudentAttendance.create({is_active: 'true',student_id: 8})
attendance = StudentAttendance.create({is_active: 'true',student_id: 9})

teacher = Teacher.create({name: 'seetha', section_id: 45 })
teacher = Teacher.create({name: 'ram', section_id: 45 })
teacher = Teacher.create({name: 'john', section_id: 45 })

teacher = Teacher.create({name: 'Mathew', section_id: 41 })
teacher = Teacher.create({name: 'Harini', section_id: 41 })
teacher = Teacher.create({name: 'priya', section_id: 41 })

teacher = Teacher.create({name: 'anitha', section_id: 36 })
teacher = Teacher.create({name: 'ramya', section_id: 36 })
teacher = Teacher.create({name: 'sumitha', section_id: 36 })

subject = Subject.create({name: 'english', student_id:1  ,teacher_id: 3  ,section_id: 45})
subject = Subject.create({name: 'Tamil', student_id:2  ,teacher_id: 6 ,section_id: 45 })
subject = Subject.create({name: 'physics', student_id:3  ,teacher_id: 1  ,section_id: 45 })

subject = Subject.create({name: 'history', student_id: 4 ,teacher_id: 2 ,section_id: 41 })
subject = Subject.create({name: 'chemistry', student_id: 5 ,teacher_id: 1  ,section_id: 41})
subject = Subject.create({name: 'maths', student_id: 6 ,teacher_id: 8 ,section_id: 41})
subject = Subject.create({name: 'geo', student_id: 7  ,teacher_id: 2  ,section_id: 36})

exam = Exam.create({exam_name: 'midterm', subject_id: 1, student_id: 1}) 
exam = Exam.create({exam_name: 'quarterly', subject_id: 1, student_id: 1})
exam = Exam.create({exam_name: 'halfyearly', subject_id: 1, student_id: 1})
exam = Exam.create({exam_name: 'annual', subject_id: 1, student_id: 1})

exam = Exam.create({exam_name: 'midterm', subject_id: 2, student_id: 2})
exam = Exam.create({exam_name: 'quarterly', subject_id: 2, student_id: 2})
exam = Exam.create({exam_name: 'halfyearly', subject_id: 2, student_id: 2})
exam = Exam.create({exam_name: 'annual', subject_id: 2, student_id: 2})

exam = Exam.create({exam_name: 'midterm', subject_id: 3, student_id: 3})
exam = Exam.create({exam_name: 'quarterly', subject_id: 3, student_id: 3})
exam = Exam.create({exam_name: 'halfyearly', subject_id: 3, student_id: 3})
exam = Exam.create({exam_name: 'annual', subject_id: 3, student_id: 3})


exam = Exam.create({exam_name: 'midterm', subject_id: 4, student_id: 5})
exam = Exam.create({exam_name: 'quarterly', subject_id: 4, student_id: 5})
exam = Exam.create({exam_name: 'halfyearly', subject_id: 4, student_id: 5})
exam = Exam.create({exam_name: 'annual', subject_id: 4, student_id: 5})

exam = Exam.create({exam_name: 'midterm', subject_id: 5, student_id: 6})
exam = Exam.create({exam_name: 'quarterly', subject_id: 5, student_id: 6})
exam = Exam.create({exam_name: 'halfyearly', subject_id: 5, student_id: 6})
exam = Exam.create({exam_name: 'annual', subject_id: 5, student_id: 6})


exam = Exam.create({exam_name: 'midterm', subject_id: 6, student_id: 7})
exam = Exam.create({exam_name: 'quarterly', subject_id: 6, student_id: 7})
exam = Exam.create({exam_name: 'halfyearly', subject_id: 6, student_id: 7})
exam = Exam.create({exam_name: 'annual', subject_id: 6, student_id: 7})


exam = Exam.create({exam_name: 'midterm', subject_id: 7, student_id: 8})
exam = Exam.create({exam_name: 'quarterly', subject_id: 7, student_id: 8})
exam = Exam.create({exam_name: 'halfyearly', subject_id: 7, student_id: 8})
exam = Exam.create({exam_name: 'annual', subject_id: 7, student_id: 8})

mark = Mark.create({student_id: 1, subject_id: 1, exam_id:1, student_mark: 90 })
mark = Mark.create({student_id: 1, subject_id: 2, exam_id:2, student_mark: 25 })
mark = Mark.create({student_id: 1, subject_id: 3, exam_id:3, student_mark: 93 })
mark = Mark.create({student_id: 1, subject_id: 4, exam_id:4, student_mark: 89 })

mark = Mark.create({student_id: 2, subject_id: 1, exam_id:5, student_mark: 90 })
mark = Mark.create({student_id: 2, subject_id: 2, exam_id:6, student_mark: 90 })
mark = Mark.create({student_id: 2, subject_id: 3, exam_id:7, student_mark: 90 })
mark = Mark.create({student_id: 2, subject_id: 4, exam_id:8, student_mark: 90 })

mark = Mark.create({student_id: 3, subject_id: 1, exam_id:9, student_mark: 90 })
mark = Mark.create({student_id: 3, subject_id: 2, exam_id:10, student_mark: 99 })
mark = Mark.create({student_id: 3, subject_id: 3, exam_id:11, student_mark: 89 })
mark = Mark.create({student_id: 3, subject_id: 4, exam_id:12, student_mark: 88 })


mark = Mark.create({student_id: 5, subject_id: 1, exam_id:13, student_mark: 90 })
mark = Mark.create({student_id: 5, subject_id: 2, exam_id:14, student_mark: 90 })
mark = Mark.create({student_id: 5, subject_id: 3, exam_id:15, student_mark: 90 })
mark = Mark.create({student_id: 5, subject_id: 4, exam_id:16, student_mark: 78 })

mark = Mark.create({student_id: 6, subject_id: 1, exam_id:17, student_mark: 90 })
mark = Mark.create({student_id: 6, subject_id: 2, exam_id:18, student_mark: 90 })
mark = Mark.create({student_id: 6, subject_id: 3, exam_id:19, student_mark: 90 })
mark = Mark.create({student_id: 6, subject_id: 4, exam_id:20, student_mark: 90 })

result = Result.create({status: 'pass',student_id: 1, subject_id: 1, mark_id: 1, exam_id: 1})
result = Result.create({status: 'fail',student_id: 1, subject_id: 1, mark_id: 2, exam_id: 2})
result = Result.create({status: 'pass',student_id: 2, subject_id: 4, mark_id: 4, exam_id: 28})
result = Result.create({status: 'pass',student_id: 3, subject_id: 5, mark_id: 20, exam_id: 5})
result = Result.create({status: 'pass',student_id: 4, subject_id: 3, mark_id: 15, exam_id: 24})


















