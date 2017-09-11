class ModifyUsersTable < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :fullname, :string

    change_table :users do |t|
      # t.remove :birtday
      # t.datetime :birthday
      t.rename :birtday, :birthday
      t.boolean :is_admin, default: false
      t.index :fullname
    end

    change_column :users, :birthday, :date

    #User.all.each do |u|
    #  u.fullname = "#{u.firstname} #{u.lastname}"
    #  u.save
    #end
  end

  def down
    change_column :users, :birthday, :datetime

    change_table :users do |t|
      t.rename :birthday, :birtday
      t.remove :is_admin
      t.remove_index :fullname
    end

    remove_column :users, :fullname

    # drop_table :users
  end
end
