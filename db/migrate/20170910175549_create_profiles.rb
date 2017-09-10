class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.string :country, limit: 80
      t.string :website
      t.string :title

      t.timestamps
    end
  end
end

# rails g model Profile user:references description:text 'country:string{80}' website:string title:string
