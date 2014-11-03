class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :content, null: false
      t.boolean :ppublic, null:false
      t.boolean :completion, null: false
      t.integer :user_id
      
      t.timestamps
    end
    add_index(:goals, :user_id)
  end
end
