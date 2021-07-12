class CreateEventos < ActiveRecord::Migration[6.1]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :status
      t.date :datainicio
      t.date :datafim

      t.timestamps
    end
  end
end
