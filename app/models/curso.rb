class Curso < ActiveRecord::Base
	has_many :alumno, dependent: :destroy
	has_one :salon, dependent: :destroy
end
