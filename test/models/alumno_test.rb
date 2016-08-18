require 'test_helper'

class AlumnoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	def setup
		@x=alumnos(:one)
	end  

  	test "guarda alumno" do
  		alum=Alumno.new({nombre:"Pedro Hakim", edad:27, curso_id:2})
  		assert alum.save
	end
end
