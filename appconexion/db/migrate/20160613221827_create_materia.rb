class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materia do |t|
    	t.string :nombre
    	t.string :grado
    	t.references :proyecto,index:true, foreing_key: true

      t.timestamps null: false
    end
  end
end
