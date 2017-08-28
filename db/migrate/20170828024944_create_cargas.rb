class CreateCargas < ActiveRecord::Migration[5.1]
  def change
    create_table :cargas do |t|

      t.integer :cajas
      t.float :costoManejo
      t.float :alto
      t.float :ancho
      t.float :largo
      t.float :pesoEstimado
      t.string :direccion
      t.float :valorAsegurado
      t.string :nombreDestinatario
      t.string :telefonoDestinatario
      t.integer :recibeSabados
      t.float :flete
      t.float :fleteTotal
      t.string :guia

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
