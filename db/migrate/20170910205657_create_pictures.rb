class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :name
      t.references :imageable, polymorphic: true

      t.timestamps
    end
    add_attachment :pictures, :file
  end
end

# sudo apt-get install imagemagick -y
# rails g model Picture name:string imageable:references{polymorphic}  --force
