class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      # t.type_donnee :colonne
      t.string :firstname, limit: 80
      t.string :lastname, limit: 80
      t.datetime :birtday

      t.timestamps
      # t.datetime :created_at
      # t.datetime :updated_at
    end

    add_column :users, :email, :string, null: false, default: "", unique: true
    add_index :users, :email
  end
end
