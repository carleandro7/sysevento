class CreateInscricaos < ActiveRecord::Migration[6.1]
  def change
    create_table :inscricaos do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.date :datanascimento
      t.references :evento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
