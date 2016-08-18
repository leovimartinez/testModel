class Alumno < ActiveRecord::Base
	belongs_to :curso, dependent: :destroy

end
