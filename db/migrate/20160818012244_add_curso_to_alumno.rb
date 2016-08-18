class AddCursoToAlumno < ActiveRecord::Migration
  def change
    add_reference :alumnos, :curso, index: true, foreign_key: true
  end
end
