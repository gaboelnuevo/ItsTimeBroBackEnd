class CreateAlarmas < ActiveRecord::Migration
  def change
    create_table :alarmas do |t|
      t.text :nombreAlarma
      t.datetime :fechaAlarma
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
