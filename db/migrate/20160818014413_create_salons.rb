class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.string :nombre
      t.references :curso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
