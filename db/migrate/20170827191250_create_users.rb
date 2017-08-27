class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user
      t.string :password
      t.integer :level
      t.string :token
      t.integer :nit
      t.string :address

      t.timestamps
    end
  end
end
