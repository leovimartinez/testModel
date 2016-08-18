# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c2=Curso.create(nombre:"Android Free", fecha:"01-06-2016", precio:100000.00)
c3=Curso.create(nombre:"Ruby on Rails", fecha:"18-08-2016", precio:87000.00)
c4=Curso.create(nombre:"ExtJS", fecha:"01-09-2016", precio:90000.00)

a2=Alumno.create(nombre:"Leovi Oscar Martinez Dominguez", edad:32, curso_id:c2.id)
a3=Alumno.create(nombre:"Enrique Gomez Robles", edad:32, curso_id:c3.id)

s2=Salon.create(nombre:"Tulum", curso_id:c2.id)
s3=Salon.create(nombre:"Teotihuacan", curso_id:c3.id)