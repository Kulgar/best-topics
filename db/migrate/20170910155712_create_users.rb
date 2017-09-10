class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string      :firstname, limit: 80
      t.string      :lastname,  limit: 80
      t.datetime    :birtday

      t.timestamps
    end

    add_column :users, :email, :string, null: false, default: "", unique: true
    add_index :users, :email
  end

end

=begin
  
rails g model User
rake db:migrate
rails g migration modify_users_table
rake db:rollback STEP=2
rake db:migrate:redo STEP=2
  
=end
