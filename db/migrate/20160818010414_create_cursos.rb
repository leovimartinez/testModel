class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nombre
      t.date :fecha
      t.float :precio

      t.timestamps null: false
    end
  end
end
