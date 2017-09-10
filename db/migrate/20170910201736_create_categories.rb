class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :topics, :categories
  end
end

# rails g scaffold Category name:string --no-assets --no-api --no-helper --no-jbuilder
