class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end

    change_table :microposts do |t|
      t.foreign_key :users, :dependent => :delete
    end

  end
end
