class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
    	t.string :nombre_proyecto
    	t.string :horas
    	t.references :alumno, index: true, foreing_key: true

      t.timestamps null: false
    end
  end
end
