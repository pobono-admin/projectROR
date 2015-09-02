class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.text :content
      t.reference :users

      t.timestamps
    end

    add_index :microposts, [:users_id, :created_at]
  end
end
